require 'adcenter_service'
require 'CustomerManagementServiceDriver'

# service wrapper for ICustomerManagementService
class CustomerManagementService < AdCenterService
  # note that ICustomerManagementService requires different namespace and
  # authentication credentials than other services
  def initialize_service(endpoint)
    @service_namespace = 'https://adcenter.microsoft.com/api/customermanagement'
    @required_credentials = %w[ ApplicationToken UserName Password DeveloperToken ]
    @service = AdCenterWrapper::ICustomerManagementService.new(endpoint)
  end
end