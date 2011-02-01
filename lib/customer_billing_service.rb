require 'adcenter_service'
require 'CustomerBillingServiceDriver'
class CustomerBillingService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::ICustomerBillingService.new(endpoint)
  end
end