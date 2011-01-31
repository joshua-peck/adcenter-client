require 'adcenter_service'
require 'ReportingServiceDriver'
class ReportingService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::IReportingService.new(endpoint)
  end
end
