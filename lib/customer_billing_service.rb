require 'adcenter_service'
require 'CustomerBillingServiceDriver'
class CustomerBillingService < AdCenterService
  def initialize_service(endpoint)
    @service = ICustomerBillingService.new(endpoint)
  end
end