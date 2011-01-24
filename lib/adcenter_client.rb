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
  VERSION = '7.0.0'
  include SOAP::RPC

  attr_accessor :options
  # connection to administration service
  attr_accessor :administration_service 
  # connection to campaign management service
  attr_accessor :campaign_management_service
  # connection to customer billing service
  attr_accessor :customer_billing_service 
  # connection to customer management service
  attr_accessor :customer_management_service 
  # connection to notification management 
  attr_accessor :notification_management
  # connection to reporting service
  attr_accessor :reporting_service 
  # connection to secure data management service
  attr_accessor :secure_data_management_service

  # endpoints to be used in production
  ENDPOINTS_PRODUCTION = {
    :administration_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/Administration/AdministrationService.svc?wsdl",
    :campaign_management_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/CampaignManagement/CampaignManagementService.svc?wsdl",
    :customer_billing_service => "https://sharedservices.adcenterapi.microsoft.com/Api/Billing/v7/CustomerBillingService.svc?wsdl",
    :customer_management_service => "https://sharedservices.adcenterapi.microsoft.com/Api/CustomerManagement/v7/CustomerManagementService.svc?wsdl",
    :notification_management => "https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx?wsdl",
    :reporting_service => "https://adcenterapi.microsoft.com/Api/Advertiser/v7/Reporting/ReportingService.svc?wsdl",
    :secure_data_management_service => "https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc?wsdl",
  }

  # endpoints to be used in sandbox
  ENDPOINTS_SANDBOX = {
    :administration_service => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v7/Administration/AdministrationService.svc?wsdl",
    :campaign_management_service => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v7/CampaignManagement/CampaignManagementService.svc?wsdl",
    :customer_billing_service => "https://sharedservices-sbx.adcenterapi.microsoft.com/Api/Billing/v7/CustomerBillingService.svc?wsdl",
    :customer_management_service => "https://sharedservices-sbx.adcenterapi.microsoft.com/Api/CustomerManagement/v7/CustomerManagementService.svc?wsdl",
    :notification_management => "https://sandboxapi.adcenter.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx?wsdl",
    :reporting_service => nil,
    :secure_data_management_service => "https://securityservices-sbx.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc?wsdl",
  }
  
  # credentials:: Hash of credential data
  # opts:: unused
  # sandbox_flag:: bool value
  def initialize(credentials, opts={}, sandbox_flag=false)
    unless credentials_valid?(credentials)
      warn "*** credentials appear invalid"
      warn credentials.to_yaml
    end
    @options = opts
    @administration_service = AdministrationService.new(select_endpoint('administration_service', sandbox_flag), credentials)
    @campaign_management_service = CampaignManagementService.new(select_endpoint('campaign_management_service', sandbox_flag), credentials)
    @customer_billing_service = CustomerBillingService.new(select_endpoint('customer_billing_service', sandbox_flag), credentials)
    @customer_management_service = CustomerManagementService.new(select_endpoint('customer_management_service', sandbox_flag), credentials)
    @notification_management = NotificationManagement.new(select_endpoint('notification_management', sandbox_flag), credentials)
    @reporting_service = ReportingService.new(select_endpoint('reporting_service', sandbox_flag), credentials)
    @secure_data_management_service = SecureDataManagementService.new(select_endpoint('secure_data_management_service', sandbox_flag), credentials)
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
