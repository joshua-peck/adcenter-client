require 'adcenter_service'
require 'CustomerBillingServiceDriver'

# service wrapper for ICustomerBillingService
class CustomerBillingService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::ICustomerBillingService.new(endpoint)
  end
end