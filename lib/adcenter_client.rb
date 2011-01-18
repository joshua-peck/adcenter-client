$: << File.expand_path(File.dirname(__FILE__))
require 'default'
require 'soap/header/simplehandler'
require 'rubygems'
begin
  gem 'soap4r'
rescue
  require_gem 'soap4r'
end

class AdCenterClient
 
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
 }
  
 
  attr_accessor :endpoint_url
  attr_accessor :options
  attr_accessor :administration_service 
  attr_accessor :campaign_management_service
  attr_accessor :customer_billing_service 
  attr_accessor :customer_management_service 
  attr_accessor :notification_management
  attr_accessor :reporting_service 
  attr_accessor :secure_data_management_service

  def initialize(credentials, opts={}, sandbox_flag=false)
    credentials_valid?(credentials)
    @options = opts
    @administration_service = IAdministrationService.new(select_endpoint('administration_service', sandbox_flag))
    @campaign_management_service = ICampaignManagementService.new(select_endpoint('campaign_management_service', sandbox_flag))
    @customer_billing_service = ICustomerBillingService.new(select_endpoint('customer_billing_service', sandbox_flag))
    @customer_management_service = ICustomerManagementService.new(select_endpoint('customer_management_service', sandbox_flag))
    @notification_management = NotificationManagementSoap.new(select_endpoint('notification_management', sandbox_flag))
    @reporting_service = IReportingService.new(select_endpoint('reporting_service', sandbox_flag))
    @secure_data_management_service = ISecureDataManagementService.new(select_endpoint('secure_data_management_service', sandbox_flag))
    # @credentials = Credentials.new(credentials)
    # @credentials.handlers.each do |h|
    #   @aws.headerhandler << h
    # end

  end
  

  private

    def credentials_valid?(creds)
      assert_kind_of Hash, creds
      assert_not_nil creds['ApplicationToken']
      assert_not_nil creds['CustomerAccountId']
      assert_not_nil creds['CustomerId']
      assert_not_nil creds['DeveloperToken']
      assert_not_nil creds['UserName']
      assert_not_nil creds['Password']
    end

    def select_endpoint(service_name, sandbox_flag)
      if sandbox_flag
        return ENDPOINTS_SANDBOX[service_name.to_sym]
      else 
        return ENDPOINTS_PRODUCTION[service_name.to_sym]
      end
    end

end