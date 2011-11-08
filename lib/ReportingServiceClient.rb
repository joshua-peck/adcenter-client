#!/usr/bin/env ruby
require 'ReportingServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = IReportingService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   SubmitGenerateReport(parameters)
#
# ARGS
#   parameters      SubmitGenerateReportRequest - {https://adcenter.microsoft.com/v8}SubmitGenerateReportRequest
#
# RETURNS
#   parameters      SubmitGenerateReportResponse - {https://adcenter.microsoft.com/v8}SubmitGenerateReportResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.submitGenerateReport(parameters)

# SYNOPSIS
#   PollGenerateReport(parameters)
#
# ARGS
#   parameters      PollGenerateReportRequest - {https://adcenter.microsoft.com/v8}PollGenerateReportRequest
#
# RETURNS
#   parameters      PollGenerateReportResponse - {https://adcenter.microsoft.com/v8}PollGenerateReportResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.pollGenerateReport(parameters)




end
