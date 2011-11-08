require 'adcenter_wrapper_entities'
require 'AdIntelligenceService.rb'
require 'soap/mapping'

module AdCenterWrapper

module AdIntelligenceServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts"
  NsV8 = "https://adcenter.microsoft.com/v8"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordPerformance"),
    :schema_element => [
      ["keywordPerformance", ["AdCenterWrapper::KeywordPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["averageCpc", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCpc")], [0, 1]],
      ["impressions", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["bidDensity", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BidDensity")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordAndConfidence,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordAndConfidence"),
    :schema_element => [
      ["keywordAndConfidence", ["AdCenterWrapper::KeywordAndConfidence[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordAndConfidence,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence"),
    :schema_element => [
      ["suggestedKeyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestedKeyword")], [0, 1]],
      ["confidenceScore", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConfidenceScore")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordIdEstimatedBid", ["AdCenterWrapper::KeywordIdEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedBids", ["AdCenterWrapper::ArrayOfEstimatedBidAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBids")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedBidAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedBidAndTraffic"),
    :schema_element => [
      ["estimatedBidAndTraffic", ["AdCenterWrapper::EstimatedBidAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EstimatedBidAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedMinBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedMinBid")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordIdEstimatedPosition", ["AdCenterWrapper::KeywordIdEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedPositions", ["AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedPositionAndTraffic"),
    :schema_element => [
      ["estimatedPositionAndTraffic", ["AdCenterWrapper::EstimatedPositionAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EstimatedPositionAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedAdPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedAdPosition")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMatchType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfMatchType"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedBid"),
    :schema_element => [
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedPosition"),
    :schema_element => [
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MonthAndYear,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear"),
    :schema_element => [
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Month")], [0, 1]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Year")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSearchCount"),
    :schema_element => [
      ["keywordSearchCount", ["AdCenterWrapper::KeywordSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["historicalSearchCounts", ["AdCenterWrapper::ArrayOfHistoricalSearchCount", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCounts")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfHistoricalSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfHistoricalSearchCount"),
    :schema_element => [
      ["historicalSearchCount", ["AdCenterWrapper::HistoricalSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HistoricalSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount"),
    :schema_element => [
      ["searchCount", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SearchCount")], [0, 1]],
      ["monthAndYear", ["AdCenterWrapper::MonthAndYear", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordHistoricalPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordHistoricalPerformance"),
    :schema_element => [
      ["keywordHistoricalPerformance", ["AdCenterWrapper::KeywordHistoricalPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordHistoricalPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["keywordKPIs", ["AdCenterWrapper::ArrayOfKeywordKPI", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPIs")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordKPI,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordKPI"),
    :schema_element => [
      ["keywordKPI", ["AdCenterWrapper::KeywordKPI[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordKPI,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["adPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")], [0, 1]],
      ["clicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Clicks")], [0, 1]],
      ["impressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["totalCost", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TotalCost")], [0, 1]],
      ["averageBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageBid")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSuggestion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSuggestion"),
    :schema_element => [
      ["keywordSuggestion", ["AdCenterWrapper::KeywordSuggestion[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordSuggestion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["suggestionsAndConfidence", ["AdCenterWrapper::ArrayOfKeywordAndConfidence", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestionsAndConfidence")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TimeInterval,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TimeInterval")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Scale,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Scale")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TargetAdPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TargetAdPosition")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MatchType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Currency,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordPerformance"),
    :schema_element => [
      ["keywordPerformance", ["AdCenterWrapper::KeywordPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["averageCpc", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCpc")], [0, 1]],
      ["impressions", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["bidDensity", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BidDensity")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordAndConfidence,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordAndConfidence"),
    :schema_element => [
      ["keywordAndConfidence", ["AdCenterWrapper::KeywordAndConfidence[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordAndConfidence,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence"),
    :schema_element => [
      ["suggestedKeyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestedKeyword")], [0, 1]],
      ["confidenceScore", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConfidenceScore")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordIdEstimatedBid", ["AdCenterWrapper::KeywordIdEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedBids", ["AdCenterWrapper::ArrayOfEstimatedBidAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedBidAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedBidAndTraffic"),
    :schema_element => [
      ["estimatedBidAndTraffic", ["AdCenterWrapper::EstimatedBidAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EstimatedBidAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedMinBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedMinBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordIdEstimatedPosition", ["AdCenterWrapper::KeywordIdEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedPositions", ["AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedPositionAndTraffic"),
    :schema_element => [
      ["estimatedPositionAndTraffic", ["AdCenterWrapper::EstimatedPositionAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EstimatedPositionAndTraffic,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedAdPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedAdPosition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMatchType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfMatchType"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedBid,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedBid"),
    :schema_element => [
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedPosition"),
    :schema_element => [
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MonthAndYear,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear"),
    :schema_element => [
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Month")], [0, 1]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Year")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSearchCount"),
    :schema_element => [
      ["keywordSearchCount", ["AdCenterWrapper::KeywordSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["historicalSearchCounts", ["AdCenterWrapper::ArrayOfHistoricalSearchCount", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHistoricalSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfHistoricalSearchCount"),
    :schema_element => [
      ["historicalSearchCount", ["AdCenterWrapper::HistoricalSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HistoricalSearchCount,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount"),
    :schema_element => [
      ["searchCount", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SearchCount")], [0, 1]],
      ["monthAndYear", ["AdCenterWrapper::MonthAndYear", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordHistoricalPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordHistoricalPerformance"),
    :schema_element => [
      ["keywordHistoricalPerformance", ["AdCenterWrapper::KeywordHistoricalPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordHistoricalPerformance,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["keywordKPIs", ["AdCenterWrapper::ArrayOfKeywordKPI", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPIs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordKPI,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordKPI"),
    :schema_element => [
      ["keywordKPI", ["AdCenterWrapper::KeywordKPI[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordKPI,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["adPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")], [0, 1]],
      ["clicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Clicks")], [0, 1]],
      ["impressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["totalCost", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TotalCost")], [0, 1]],
      ["averageBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSuggestion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSuggestion"),
    :schema_element => [
      ["keywordSuggestion", ["AdCenterWrapper::KeywordSuggestion[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordSuggestion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["suggestionsAndConfidence", ["AdCenterWrapper::ArrayOfKeywordAndConfidence", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestionsAndConfidence")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeInterval,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TimeInterval")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Scale,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Scale")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetAdPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TargetAdPosition")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MatchType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Currency,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPosition,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPublisherKeywordPerformanceRequest,
    :schema_name => XSD::QName.new(NsV8, "GetPublisherKeywordPerformanceRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["timeInterval", ["AdCenterWrapper::TimeInterval", XSD::QName.new(NsV8, "TimeInterval")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPublisherKeywordPerformanceResponse,
    :schema_name => XSD::QName.new(NsV8, "GetPublisherKeywordPerformanceResponse"),
    :schema_element => [
      ["keywordPerformance", ["AdCenterWrapper::ArrayOfKeywordPerformance", XSD::QName.new(NsV8, "KeywordPerformance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_name => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_name => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_name => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SuggestKeywordsForUrlRequest,
    :schema_name => XSD::QName.new(NsV8, "SuggestKeywordsForUrlRequest"),
    :schema_element => [
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Url")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["maxKeywords", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "MaxKeywords")], [0, 1]],
      ["minConfidenceScore", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MinConfidenceScore")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SuggestKeywordsForUrlResponse,
    :schema_name => XSD::QName.new(NsV8, "SuggestKeywordsForUrlResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeywordAndConfidence", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedBidByKeywordIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedBidByKeywordIdsRequest"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]],
      ["targetPositionForAds", ["AdCenterWrapper::TargetAdPosition", XSD::QName.new(NsV8, "TargetPositionForAds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedBidByKeywordIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedBidByKeywordIdsResponse"),
    :schema_element => [
      ["keywordEstimatedBids", ["AdCenterWrapper::ArrayOfKeywordIdEstimatedBid", XSD::QName.new(NsV8, "KeywordEstimatedBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedPositionByKeywordIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedPositionByKeywordIdsRequest"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]],
      ["maxBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MaxBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedPositionByKeywordIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedPositionByKeywordIdsResponse"),
    :schema_element => [
      ["keywordEstimatedPositions", ["AdCenterWrapper::ArrayOfKeywordIdEstimatedPosition", XSD::QName.new(NsV8, "KeywordEstimatedPositions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedBidByKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedBidByKeywordsRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["targetPositionForAds", ["AdCenterWrapper::TargetAdPosition", XSD::QName.new(NsV8, "TargetPositionForAds")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsV8, "Currency")], [0, 1]],
      ["matchTypes", ["AdCenterWrapper::ArrayOfMatchType", XSD::QName.new(NsV8, "MatchTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedBidByKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedBidByKeywordsResponse"),
    :schema_element => [
      ["keywordEstimatedBids", ["AdCenterWrapper::ArrayOfKeywordEstimatedBid", XSD::QName.new(NsV8, "KeywordEstimatedBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedPositionByKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedPositionByKeywordsRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["maxBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MaxBid")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsV8, "Currency")], [0, 1]],
      ["matchTypes", ["AdCenterWrapper::ArrayOfMatchType", XSD::QName.new(NsV8, "MatchTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetEstimatedPositionByKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetEstimatedPositionByKeywordsResponse"),
    :schema_element => [
      ["keywordEstimatedPositions", ["AdCenterWrapper::ArrayOfKeywordEstimatedPosition", XSD::QName.new(NsV8, "KeywordEstimatedPositions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetHistoricalSearchCountRequest,
    :schema_name => XSD::QName.new(NsV8, "GetHistoricalSearchCountRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["startMonthAndYear", ["AdCenterWrapper::MonthAndYear", XSD::QName.new(NsV8, "StartMonthAndYear")], [0, 1]],
      ["endMonthAndYear", ["AdCenterWrapper::MonthAndYear", XSD::QName.new(NsV8, "EndMonthAndYear")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetHistoricalSearchCountResponse,
    :schema_name => XSD::QName.new(NsV8, "GetHistoricalSearchCountResponse"),
    :schema_element => [
      ["keywordSearchCounts", ["AdCenterWrapper::ArrayOfKeywordSearchCount", XSD::QName.new(NsV8, "KeywordSearchCounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetHistoricalKeywordPerformanceRequest,
    :schema_name => XSD::QName.new(NsV8, "GetHistoricalKeywordPerformanceRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["timeInterval", ["AdCenterWrapper::TimeInterval", XSD::QName.new(NsV8, "TimeInterval")], [0, 1]],
      ["targetAdPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsV8, "TargetAdPosition")], [0, 1]],
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsV8, "MatchType")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetHistoricalKeywordPerformanceResponse,
    :schema_name => XSD::QName.new(NsV8, "GetHistoricalKeywordPerformanceResponse"),
    :schema_element => [
      ["keywordHistoricalPerformances", ["AdCenterWrapper::ArrayOfKeywordHistoricalPerformance", XSD::QName.new(NsV8, "KeywordHistoricalPerformances")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SuggestKeywordsFromExistingKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "SuggestKeywordsFromExistingKeywordsRequest"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Keywords")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["maxSuggestionsPerKeyword", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "MaxSuggestionsPerKeyword")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SuggestKeywordsFromExistingKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "SuggestKeywordsFromExistingKeywordsResponse"),
    :schema_element => [
      ["keywordSuggestions", ["AdCenterWrapper::ArrayOfKeywordSuggestion", XSD::QName.new(NsV8, "KeywordSuggestions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeInterval,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TimeInterval")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformance,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordPerformance"),
    :schema_element => [
      ["keywordPerformance", ["AdCenterWrapper::KeywordPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformance,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["averageCpc", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCpc")], [0, 1]],
      ["impressions", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["bidDensity", ["AdCenterWrapper::Scale", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BidDensity")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Scale,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Scale")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordAndConfidence,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordAndConfidence"),
    :schema_element => [
      ["keywordAndConfidence", ["AdCenterWrapper::KeywordAndConfidence[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordAndConfidence,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordAndConfidence"),
    :schema_element => [
      ["suggestedKeyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestedKeyword")], [0, 1]],
      ["confidenceScore", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConfidenceScore")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetAdPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TargetAdPosition")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedBid,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordIdEstimatedBid", ["AdCenterWrapper::KeywordIdEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedBid,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedBid"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedBid,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedBids", ["AdCenterWrapper::ArrayOfEstimatedBidAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedBidAndTraffic,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedBidAndTraffic"),
    :schema_element => [
      ["estimatedBidAndTraffic", ["AdCenterWrapper::EstimatedBidAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EstimatedBidAndTraffic,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedBidAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedMinBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedMinBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MatchType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Currency,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordIdEstimatedPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordIdEstimatedPosition", ["AdCenterWrapper::KeywordIdEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordIdEstimatedPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordIdEstimatedPosition"),
    :schema_element => [
      ["keywordId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordId")], [0, 1]],
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimatedPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["estimatedPositions", ["AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfEstimatedPositionAndTraffic"),
    :schema_element => [
      ["estimatedPositionAndTraffic", ["AdCenterWrapper::EstimatedPositionAndTraffic[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EstimatedPositionAndTraffic,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedPositionAndTraffic"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["minClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinClicksPerWeek")], [0, 1]],
      ["maxClicksPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxClicksPerWeek")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["minImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinImpressionsPerWeek")], [0, 1]],
      ["maxImpressionsPerWeek", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxImpressionsPerWeek")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["minTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MinTotalCostPerWeek")], [0, 1]],
      ["maxTotalCostPerWeek", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MaxTotalCostPerWeek")], [0, 1]],
      ["currency", ["AdCenterWrapper::Currency", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Currency")], [0, 1]],
      ["estimatedAdPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "EstimatedAdPosition")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMatchType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfMatchType"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedBid,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedBid"),
    :schema_element => [
      ["keywordEstimatedBid", ["AdCenterWrapper::KeywordEstimatedBid[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimatedPosition,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordEstimatedPosition"),
    :schema_element => [
      ["keywordEstimatedPosition", ["AdCenterWrapper::KeywordEstimatedPosition[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordEstimatedPosition")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MonthAndYear,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear"),
    :schema_element => [
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Month")], [0, 1]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Year")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSearchCount,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSearchCount"),
    :schema_element => [
      ["keywordSearchCount", ["AdCenterWrapper::KeywordSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordSearchCount,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSearchCount"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["historicalSearchCounts", ["AdCenterWrapper::ArrayOfHistoricalSearchCount", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHistoricalSearchCount,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfHistoricalSearchCount"),
    :schema_element => [
      ["historicalSearchCount", ["AdCenterWrapper::HistoricalSearchCount[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HistoricalSearchCount,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "HistoricalSearchCount"),
    :schema_element => [
      ["searchCount", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SearchCount")], [0, 1]],
      ["monthAndYear", ["AdCenterWrapper::MonthAndYear", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MonthAndYear")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordHistoricalPerformance,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordHistoricalPerformance"),
    :schema_element => [
      ["keywordHistoricalPerformance", ["AdCenterWrapper::KeywordHistoricalPerformance[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordHistoricalPerformance,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordHistoricalPerformance"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["keywordKPIs", ["AdCenterWrapper::ArrayOfKeywordKPI", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPIs")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordKPI,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordKPI"),
    :schema_element => [
      ["keywordKPI", ["AdCenterWrapper::KeywordKPI[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordKPI,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordKPI"),
    :schema_element => [
      ["matchType", ["AdCenterWrapper::MatchType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "MatchType")], [0, 1]],
      ["adPosition", ["AdCenterWrapper::AdPosition", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdPosition")], [0, 1]],
      ["clicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Clicks")], [0, 1]],
      ["impressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Impressions")], [0, 1]],
      ["averageCPC", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageCPC")], [0, 1]],
      ["cTR", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CTR")], [0, 1]],
      ["totalCost", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "TotalCost")], [0, 1]],
      ["averageBid", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AverageBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordSuggestion,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfKeywordSuggestion"),
    :schema_element => [
      ["keywordSuggestion", ["AdCenterWrapper::KeywordSuggestion[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordSuggestion,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "KeywordSuggestion"),
    :schema_element => [
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Keyword")], [0, 1]],
      ["suggestionsAndConfidence", ["AdCenterWrapper::ArrayOfKeywordAndConfidence", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "SuggestionsAndConfidence")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

end

end
