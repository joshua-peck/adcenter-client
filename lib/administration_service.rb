require 'adcenter_service'
require 'AdministrationServiceDriver'
class AdministrationService < AdCenterService
  def initialize_service(endpoint)
    @service = IAdministrationService.new(endpoint)
  end
end
