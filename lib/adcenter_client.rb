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

require 'ad_intelligence_service'
require 'administration_service'
require 'campaign_management_service'
require 'customer_billing_service'
require 'customer_management_service'
require 'notification_service'
require 'optimizer_service'
require 'reporting_service'

class AdCenterClient
  VERSION = '8.0.0'
  include SOAP::RPC
  
  # unused, but should be used to pass "other" options to the class
  attr_accessor :options
  # connection to ad intelligence service
  attr_accessor :ad_intelligence_service
  # connection to administration service
  attr_accessor :administration_service 
  # connection to campaign management service
  attr_accessor :campaign_management_service
  # connection to customer billing service
  attr_accessor :customer_billing_service 
  # connection to customer management service
  attr_accessor :customer_management_service 
  # connection to notification service 
  attr_accessor :notification_service
  # connection to optimizer service
  attr_accessor :optimizer_service 
  # connection to reporting service
  attr_accessor :reporting_service 
  # reference to wrapper entities
  attr_accessor :entities

  # endpoints to be used in production
  ENDPOINTS_PRODUCTION = {
    :ad_intelligence_service => 'https://adcenterapi.microsoft.com/Api/Advertiser/v8/CampaignManagement/AdIntelligenceService.svc?wsdl',
    :administration_service => 'https://adcenterapi.microsoft.com/Api/Advertiser/v8/Administration/AdministrationService.svc?wsdl',
    :campaign_management_service => 'https://adcenterapi.microsoft.com/Api/Advertiser/v8/CampaignManagement/CampaignManagementService.svc?wsdl',
    :customer_billing_service => 'https://sharedservices.adcenterapi.microsoft.com/Api/Billing/v8/CustomerBillingService.svc?wsdl',
    :customer_management_service => 'https://sharedservices.adcenterapi.microsoft.com/Api/CustomerManagement/v8/CustomerManagementService.svc?wsdl',
    :notification_service => 'https://sharedservices.adcenterapi.microsoft.com/Api/Notification/v8/NotificationService.svc?wsdl',
    :optimizer_service => 'https://adcenterapi.microsoft.com/Api/Advertiser/v8/Optimizer/OptimizerService.svc?wsdl',
    :reporting_service => 'https://adcenterapi.microsoft.com/Api/Advertiser/v8/Reporting/ReportingService.svc?wsdl'
  }

  # endpoints to be used in sandbox
  ENDPOINTS_SANDBOX = { 
    :ad_intelligence_service => nil,
    :administration_service => nil,
    :campaign_management_service => nil,
    :customer_billing_service => nil,
    :customer_management_service => nil,
    :notification_service => nil,
    :optimizer_service => nil,
    :reporting_service => nil,
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
    @entities = AdCenterWrapper
    @ad_intelligence_service = AdIntelligenceService.new(select_endpoint('ad_intelligence_service', sandbox_flag), credentials)
    @administration_service = AdministrationService.new(select_endpoint('administration_service', sandbox_flag), credentials)
    @campaign_management_service = CampaignManagementService.new(select_endpoint('campaign_management_service', sandbox_flag), credentials)
    @customer_billing_service = CustomerBillingService.new(select_endpoint('customer_billing_service', sandbox_flag), credentials)
    @customer_management_service = CustomerManagementService.new(select_endpoint('customer_management_service', sandbox_flag), credentials)
    @notification_service = NotificationService.new(select_endpoint('notification_service', sandbox_flag), credentials)
    @optimizer_service = ReportingService.new(select_endpoint('optimizer_service', sandbox_flag), credentials)
    @reporting_service = ReportingService.new(select_endpoint('reporting_service', sandbox_flag), credentials)
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