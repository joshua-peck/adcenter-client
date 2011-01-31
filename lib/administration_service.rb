require 'adcenter_service'
require 'adcenter_wrapper_entities'
require 'AdministrationServiceDriver'

class AdministrationService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::IAdministrationService.new(endpoint)
  end
end
