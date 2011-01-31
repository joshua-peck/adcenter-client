require 'adcenter_service'
require 'CampaignManagementServiceDriver'
class CampaignManagementService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::ICampaignManagementService.new(endpoint)
  end
end
