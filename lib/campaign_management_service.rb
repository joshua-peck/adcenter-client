require 'adcenter_service'
require 'CampaignManagementServiceDriver'

# service wrapper for ICampaignManagementService
class CampaignManagementService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::ICampaignManagementService.new(endpoint)
  end
end
