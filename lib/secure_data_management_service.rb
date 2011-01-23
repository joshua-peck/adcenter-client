require 'adcenter_service'
require 'SecureDataManagementServiceDriver'
class SecureDataManagementService < AdCenterService
  def initialize_service(endpoint)
    @service = ISecureDataManagementService.new(endpoint)
  end
end
