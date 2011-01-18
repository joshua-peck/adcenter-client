#!/usr/bin/env ruby
require 'AdministrationServiceDriver.rb'

endpoint_url = ARGV.shift
obj = IAdministrationService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetAssignedQuota(parameters)
#
# ARGS
#   parameters      GetAssignedQuotaRequest - {https://adcenter.microsoft.com/v7}GetAssignedQuotaRequest
#
# RETURNS
#   parameters      GetAssignedQuotaResponse - {https://adcenter.microsoft.com/v7}GetAssignedQuotaResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAssignedQuota(parameters)

# SYNOPSIS
#   GetRemainingQuota(parameters)
#
# ARGS
#   parameters      GetRemainingQuotaRequest - {https://adcenter.microsoft.com/v7}GetRemainingQuotaRequest
#
# RETURNS
#   parameters      GetRemainingQuotaResponse - {https://adcenter.microsoft.com/v7}GetRemainingQuotaResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getRemainingQuota(parameters)


