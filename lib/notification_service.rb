require 'adcenter_service'
require 'NotificationServiceDriver'
class NotificationService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::INotificationService.new(endpoint)
  end
end