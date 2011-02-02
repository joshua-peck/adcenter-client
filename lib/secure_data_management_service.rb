require 'adcenter_service'
require 'SecureDataManagementServiceDriver'

# service wrapper for ISecureDataManagementService
class SecureDataManagementService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::ISecureDataManagementService.new(endpoint)
  end
end
