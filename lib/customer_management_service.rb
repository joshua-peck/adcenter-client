require 'adcenter_service'
require 'CustomerManagementServiceDriver'
class CustomerManagementService < AdCenterService
  def initialize_service(endpoint)
    @service_namespace = 'https://adcenter.microsoft.com/api/customermanagement'
    @required_credentials = %w[ ApplicationToken UserName Password DeveloperToken ]
    @service = AdCenterWrapper::ICustomerManagementService.new(endpoint)
  end
end