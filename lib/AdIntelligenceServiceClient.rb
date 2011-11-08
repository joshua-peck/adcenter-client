#!/usr/bin/env ruby
require 'AdIntelligenceServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = IAdIntelligenceService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetPublisherKeywordPerformance(parameters)
#
# ARGS
#   parameters      GetPublisherKeywordPerformanceRequest - {https://adcenter.microsoft.com/v8}GetPublisherKeywordPerformanceRequest
#
# RETURNS
#   parameters      GetPublisherKeywordPerformanceResponse - {https://adcenter.microsoft.com/v8}GetPublisherKeywordPerformanceResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getPublisherKeywordPerformance(parameters)

# SYNOPSIS
#   SuggestKeywordsForUrl(parameters)
#
# ARGS
#   parameters      SuggestKeywordsForUrlRequest - {https://adcenter.microsoft.com/v8}SuggestKeywordsForUrlRequest
#
# RETURNS
#   parameters      SuggestKeywordsForUrlResponse - {https://adcenter.microsoft.com/v8}SuggestKeywordsForUrlResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.suggestKeywordsForUrl(parameters)

# SYNOPSIS
#   GetEstimatedBidByKeywordIds(parameters)
#
# ARGS
#   parameters      GetEstimatedBidByKeywordIdsRequest - {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordIdsRequest
#
# RETURNS
#   parameters      GetEstimatedBidByKeywordIdsResponse - {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordIdsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getEstimatedBidByKeywordIds(parameters)

# SYNOPSIS
#   GetEstimatedPositionByKeywordIds(parameters)
#
# ARGS
#   parameters      GetEstimatedPositionByKeywordIdsRequest - {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordIdsRequest
#
# RETURNS
#   parameters      GetEstimatedPositionByKeywordIdsResponse - {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordIdsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getEstimatedPositionByKeywordIds(parameters)

# SYNOPSIS
#   GetEstimatedBidByKeywords(parameters)
#
# ARGS
#   parameters      GetEstimatedBidByKeywordsRequest - {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordsRequest
#
# RETURNS
#   parameters      GetEstimatedBidByKeywordsResponse - {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordsResponse
#
# RAISES
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getEstimatedBidByKeywords(parameters)

# SYNOPSIS
#   GetEstimatedPositionByKeywords(parameters)
#
# ARGS
#   parameters      GetEstimatedPositionByKeywordsRequest - {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordsRequest
#
# RETURNS
#   parameters      GetEstimatedPositionByKeywordsResponse - {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getEstimatedPositionByKeywords(parameters)

# SYNOPSIS
#   GetHistoricalSearchCount(parameters)
#
# ARGS
#   parameters      GetHistoricalSearchCountRequest - {https://adcenter.microsoft.com/v8}GetHistoricalSearchCountRequest
#
# RETURNS
#   parameters      GetHistoricalSearchCountResponse - {https://adcenter.microsoft.com/v8}GetHistoricalSearchCountResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getHistoricalSearchCount(parameters)

# SYNOPSIS
#   GetHistoricalKeywordPerformance(parameters)
#
# ARGS
#   parameters      GetHistoricalKeywordPerformanceRequest - {https://adcenter.microsoft.com/v8}GetHistoricalKeywordPerformanceRequest
#
# RETURNS
#   parameters      GetHistoricalKeywordPerformanceResponse - {https://adcenter.microsoft.com/v8}GetHistoricalKeywordPerformanceResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.getHistoricalKeywordPerformance(parameters)

# SYNOPSIS
#   SuggestKeywordsFromExistingKeywords(parameters)
#
# ARGS
#   parameters      SuggestKeywordsFromExistingKeywordsRequest - {https://adcenter.microsoft.com/v8}SuggestKeywordsFromExistingKeywordsRequest
#
# RETURNS
#   parameters      SuggestKeywordsFromExistingKeywordsResponse - {https://adcenter.microsoft.com/v8}SuggestKeywordsFromExistingKeywordsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFaultDetail - {https://adcenter.microsoft.com/v8}ApiFaultDetail
#
parameters = nil
puts obj.suggestKeywordsFromExistingKeywords(parameters)




end
