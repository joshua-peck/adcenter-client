require 'adcenter_service'
require 'OptimizerServiceDriver'
class OptimizerService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::IOptimizerService.new(endpoint)
  end
end