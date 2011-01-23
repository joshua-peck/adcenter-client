require 'adcenter_service'
require 'CustomerManagementServiceDriver'
class CustomerManagementService < AdCenterService
  def initialize_service(endpoint)
    @service = ICustomerManagementService.new(endpoint)
  end
end