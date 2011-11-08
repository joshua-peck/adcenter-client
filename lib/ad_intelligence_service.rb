require 'adcenter_service'
require 'adcenter_wrapper_entities'
require 'AdIntelligenceServiceDriver'

class AdIntelligenceService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::IAdIntelligenceService.new(endpoint)
  end
end
