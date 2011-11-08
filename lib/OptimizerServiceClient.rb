#!/usr/bin/env ruby
require 'OptimizerServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = IOptimizerService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetBudgetOpportunities(parameters)
#
# ARGS
#   parameters      GetBudgetOpportunitiesRequest - {https://adcenter.microsoft.com/v8}GetBudgetOpportunitiesRequest
#
# RETURNS
#   parameters      GetBudgetOpportunitiesResponse - {https://adcenter.microsoft.com/v8}GetBudgetOpportunitiesResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getBudgetOpportunities(parameters)

# SYNOPSIS
#   ApplyBudgetOpportunities(parameters)
#
# ARGS
#   parameters      ApplyBudgetOpportunitiesRequest - {https://adcenter.microsoft.com/v8}ApplyBudgetOpportunitiesRequest
#
# RETURNS
#   parameters      ApplyBudgetOpportunitiesResponse - {https://adcenter.microsoft.com/v8}ApplyBudgetOpportunitiesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.applyBudgetOpportunities(parameters)




end
