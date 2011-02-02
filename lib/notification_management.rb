require 'adcenter_service'
require 'defaultDriver'

# service wrapper for NotificationManagementSoap
class NotificationManagement < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::NotificationManagementSoap.new(endpoint)
  end
end