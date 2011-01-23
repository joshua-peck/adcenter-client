$: << File.expand_path(File.dirname(__FILE__))

require 'rubygems'
begin
  gem 'soap4r'
rescue
  require_gem 'soap4r'
end

require 'soap/wsdlDriver'
require 'soap/header/simplehandler'
require 'soap/baseData'

require 'administration_service'
require 'campaign_management_service'
require 'customer_billing_service'
require 'customer_management_service'
require 'notification_management'
require 'reporting_service'
require 'secure_data_management_service'

class AdCenterClient
  include SOAP::RPC
  NS_SHARED = 'https://adcenter.microsoft.com/v7'

  attr_accessor :endpoint_url
  attr_accessor :options
  attr_accessor :administration_service 
  attr_accessor :campaign_management_service
  attr_accessor :customer_billing_service 
  attr_accessor :customer_management_service 
  attr_accessor :notification_management
  attr_accessor :reporting_service 
  attr_accessor :secure_data_management_service

  ENDPOINTS_PRODUCTION = {
    :administration_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/Administration/AdministrationService.svc?wsdl",
    :campaign_management_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/CampaignManagement/CampaignManagementService.svc?wsdl",
    :customer_billing_service => "https://sharedservices.adcenterapi.microsoft.com/Api/Billing/v7/CustomerBillingService.svc?wsdl",
    :customer_management_service => "https://sharedservices.adcenterapi.microsoft.com/Api/CustomerManagement/v7/CustomerManagementService.svc?wsdl",
    :notification_management => "https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx?wsdl",
    :reporting_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/Reporting/ReportingService.svc?wsdl",
    :secure_data_management_service => "https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc?wsdl",
  }

  ENDPOINTS_SANDBOX = {
    :administration_service => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v7/Administration/AdministrationService.svc?wsdl",
    :campaign_management_service => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v7/CampaignManagement/CampaignManagementService.svc?wsdl",
    :customer_billing_service => "https://sharedservices-sbx.adcenterapi.microsoft.com/Api/Billing/v7/CustomerBillingService.svc?wsdl",
    :customer_management_service => "https://sharedservices-sbx.adcenterapi.microsoft.com/Api/CustomerManagement/v7/CustomerManagementService.svc?wsdl",
    :notification_management => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx?wsdl",
    :reporting_service => nil,
    :secure_data_management_service => "https://securityservices-sbx.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc?wsdl",
  }
  
  def initialize(credentials, opts={}, sandbox_flag=false)
    unless credentials_valid?(credentials)
      warn "*** credentials appear invalid"
      warn credentials.to_yaml
    end
    @options = opts
    @administration_service = AdministrationService.new(select_endpoint('administration_service', sandbox_flag))
    @campaign_management_service = CampaignManagementService.new(select_endpoint('campaign_management_service', sandbox_flag))
    @customer_billing_service = CustomerBillingService.new(select_endpoint('customer_billing_service', sandbox_flag))
    @customer_management_service = CustomerManagementService.new(select_endpoint('customer_management_service', sandbox_flag))
    @notification_management = NotificationManagementSoap.new(select_endpoint('notification_management', sandbox_flag))
    @reporting_service = ReportingService.new(select_endpoint('reporting_service', sandbox_flag))
    @secure_data_management_service = SecureDataManagementService.new(select_endpoint('secure_data_management_service', sandbox_flag))
    @credentials = Credentials.new(credentials)
    @credentials.handlers.each do |h|
      
      @administration_service.headerhandler << h
      @customer_billing_service.headerhandler << h
      @customer_management_service.headerhandler << h
      @notification_management.headerhandler << h
      @reporting_service.headerhandler << h
      @secure_data_management_service.headerhandler << h
      @campaign_management_service.headerhandler << h
    end
  end
  
  class HeaderHandler < SOAP::Header::SimpleHandler
    attr_reader :element
    attr_writer :value
    def initialize(element, value)
      super(XSD::QName.new(NS_SHARED, element))
      @element = element
      @value = value
    end
    def on_simple_outbound
      @value
    end
  end

  class Credentials
    attr_reader :handlers
    def initialize(credentials)
      @handlers = Array.new
      credentials.each_pair do |key, value|
        @handlers << HeaderHandler.new(key, value.to_s) 
      end
    end
    def setHeader(header, value)
      handlers.each do |handler|
        if handler.element == header then
          handler.value = value.to_s
        end
      end
    end
  end  

  private

    def credentials_valid?(creds)
      return false unless creds.kind_of?(Hash)
      return false unless creds['ApplicationToken']
      return false unless creds['CustomerAccountId']
      return false unless creds['CustomerId']
      return false unless creds['DeveloperToken']
      return false unless creds['UserName']
      return false unless creds['Password']
      return true
    end

    def select_endpoint(service_name, sandbox_flag)
      if sandbox_flag
        return ENDPOINTS_SANDBOX[service_name.to_sym]
      else 
        return ENDPOINTS_PRODUCTION[service_name.to_sym]
      end
    end

end
