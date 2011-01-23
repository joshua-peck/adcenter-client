require 'adcenter_service'
require 'defaultDriver'
class NotificationManagement < AdCenterService
  def initialize_service(endpoint)
    @service = NotificationManagementSoap.new(endpoint)
  end
end