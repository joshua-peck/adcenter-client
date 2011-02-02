require 'adcenter_service'
require 'ReportingServiceDriver'

# service wrapper for IReportingService
class ReportingService < AdCenterService
  def initialize_service(endpoint)
    @service = AdCenterWrapper::IReportingService.new(endpoint)
  end
end
