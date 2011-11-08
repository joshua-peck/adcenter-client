require 'xsd/qname'

module AdCenterWrapper


# {https://adcenter.microsoft.com/v8}ArrayOfBatchError
class ArrayOfBatchError < ::Array
end

# {https://adcenter.microsoft.com/v8}BatchError
#   code - SOAP::SOAPInt
#   details - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   message - SOAP::SOAPString
class BatchError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :errorCode
  attr_accessor :index
  attr_accessor :message

  def initialize(code = nil, details = nil, errorCode = nil, index = nil, message = nil)
    @code = code
    @details = details
    @errorCode = errorCode
    @index = index
    @message = message
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# {https://adcenter.microsoft.com/v8}OperationError
#   code - SOAP::SOAPInt
#   details - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class OperationError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, details = nil, errorCode = nil, message = nil)
    @code = code
    @details = details
    @errorCode = errorCode
    @message = message
  end
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordPerformance
class ArrayOfKeywordPerformance < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordPerformance
#   keyword - SOAP::SOAPString
#   averageCpc - SOAP::SOAPDouble
#   impressions - AdCenterWrapper::Scale
#   bidDensity - AdCenterWrapper::Scale
class KeywordPerformance
  attr_accessor :keyword
  attr_accessor :averageCpc
  attr_accessor :impressions
  attr_accessor :bidDensity

  def initialize(keyword = nil, averageCpc = nil, impressions = nil, bidDensity = nil)
    @keyword = keyword
    @averageCpc = averageCpc
    @impressions = impressions
    @bidDensity = bidDensity
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordAndConfidence
class ArrayOfKeywordAndConfidence < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordAndConfidence
#   suggestedKeyword - SOAP::SOAPString
#   confidenceScore - SOAP::SOAPDouble
class KeywordAndConfidence
  attr_accessor :suggestedKeyword
  attr_accessor :confidenceScore

  def initialize(suggestedKeyword = nil, confidenceScore = nil)
    @suggestedKeyword = suggestedKeyword
    @confidenceScore = confidenceScore
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordIdEstimatedBid
class ArrayOfKeywordIdEstimatedBid < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordIdEstimatedBid
#   keywordId - SOAP::SOAPLong
#   keywordEstimatedBid - AdCenterWrapper::KeywordEstimatedBid
class KeywordIdEstimatedBid
  attr_accessor :keywordId
  attr_accessor :keywordEstimatedBid

  def initialize(keywordId = nil, keywordEstimatedBid = nil)
    @keywordId = keywordId
    @keywordEstimatedBid = keywordEstimatedBid
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordEstimatedBid
#   keyword - SOAP::SOAPString
#   estimatedBids - AdCenterWrapper::ArrayOfEstimatedBidAndTraffic
class KeywordEstimatedBid
  attr_accessor :keyword
  attr_accessor :estimatedBids

  def initialize(keyword = nil, estimatedBids = nil)
    @keyword = keyword
    @estimatedBids = estimatedBids
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfEstimatedBidAndTraffic
class ArrayOfEstimatedBidAndTraffic < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}EstimatedBidAndTraffic
#   matchType - AdCenterWrapper::MatchType
#   minClicksPerWeek - SOAP::SOAPInt
#   maxClicksPerWeek - SOAP::SOAPInt
#   averageCPC - SOAP::SOAPDouble
#   minImpressionsPerWeek - SOAP::SOAPInt
#   maxImpressionsPerWeek - SOAP::SOAPInt
#   cTR - SOAP::SOAPDouble
#   minTotalCostPerWeek - SOAP::SOAPDouble
#   maxTotalCostPerWeek - SOAP::SOAPDouble
#   currency - AdCenterWrapper::Currency
#   estimatedMinBid - SOAP::SOAPDouble
class EstimatedBidAndTraffic
  attr_accessor :matchType
  attr_accessor :minClicksPerWeek
  attr_accessor :maxClicksPerWeek
  attr_accessor :averageCPC
  attr_accessor :minImpressionsPerWeek
  attr_accessor :maxImpressionsPerWeek
  attr_accessor :cTR
  attr_accessor :minTotalCostPerWeek
  attr_accessor :maxTotalCostPerWeek
  attr_accessor :currency
  attr_accessor :estimatedMinBid

  def initialize(matchType = nil, minClicksPerWeek = nil, maxClicksPerWeek = nil, averageCPC = nil, minImpressionsPerWeek = nil, maxImpressionsPerWeek = nil, cTR = nil, minTotalCostPerWeek = nil, maxTotalCostPerWeek = nil, currency = nil, estimatedMinBid = nil)
    @matchType = matchType
    @minClicksPerWeek = minClicksPerWeek
    @maxClicksPerWeek = maxClicksPerWeek
    @averageCPC = averageCPC
    @minImpressionsPerWeek = minImpressionsPerWeek
    @maxImpressionsPerWeek = maxImpressionsPerWeek
    @cTR = cTR
    @minTotalCostPerWeek = minTotalCostPerWeek
    @maxTotalCostPerWeek = maxTotalCostPerWeek
    @currency = currency
    @estimatedMinBid = estimatedMinBid
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordIdEstimatedPosition
class ArrayOfKeywordIdEstimatedPosition < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordIdEstimatedPosition
#   keywordId - SOAP::SOAPLong
#   keywordEstimatedPosition - AdCenterWrapper::KeywordEstimatedPosition
class KeywordIdEstimatedPosition
  attr_accessor :keywordId
  attr_accessor :keywordEstimatedPosition

  def initialize(keywordId = nil, keywordEstimatedPosition = nil)
    @keywordId = keywordId
    @keywordEstimatedPosition = keywordEstimatedPosition
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordEstimatedPosition
#   keyword - SOAP::SOAPString
#   estimatedPositions - AdCenterWrapper::ArrayOfEstimatedPositionAndTraffic
class KeywordEstimatedPosition
  attr_accessor :keyword
  attr_accessor :estimatedPositions

  def initialize(keyword = nil, estimatedPositions = nil)
    @keyword = keyword
    @estimatedPositions = estimatedPositions
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfEstimatedPositionAndTraffic
class ArrayOfEstimatedPositionAndTraffic < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}EstimatedPositionAndTraffic
#   matchType - AdCenterWrapper::MatchType
#   minClicksPerWeek - SOAP::SOAPInt
#   maxClicksPerWeek - SOAP::SOAPInt
#   averageCPC - SOAP::SOAPDouble
#   minImpressionsPerWeek - SOAP::SOAPInt
#   maxImpressionsPerWeek - SOAP::SOAPInt
#   cTR - SOAP::SOAPDouble
#   minTotalCostPerWeek - SOAP::SOAPDouble
#   maxTotalCostPerWeek - SOAP::SOAPDouble
#   currency - AdCenterWrapper::Currency
#   estimatedAdPosition - AdCenterWrapper::AdPosition
class EstimatedPositionAndTraffic
  attr_accessor :matchType
  attr_accessor :minClicksPerWeek
  attr_accessor :maxClicksPerWeek
  attr_accessor :averageCPC
  attr_accessor :minImpressionsPerWeek
  attr_accessor :maxImpressionsPerWeek
  attr_accessor :cTR
  attr_accessor :minTotalCostPerWeek
  attr_accessor :maxTotalCostPerWeek
  attr_accessor :currency
  attr_accessor :estimatedAdPosition

  def initialize(matchType = nil, minClicksPerWeek = nil, maxClicksPerWeek = nil, averageCPC = nil, minImpressionsPerWeek = nil, maxImpressionsPerWeek = nil, cTR = nil, minTotalCostPerWeek = nil, maxTotalCostPerWeek = nil, currency = nil, estimatedAdPosition = nil)
    @matchType = matchType
    @minClicksPerWeek = minClicksPerWeek
    @maxClicksPerWeek = maxClicksPerWeek
    @averageCPC = averageCPC
    @minImpressionsPerWeek = minImpressionsPerWeek
    @maxImpressionsPerWeek = maxImpressionsPerWeek
    @cTR = cTR
    @minTotalCostPerWeek = minTotalCostPerWeek
    @maxTotalCostPerWeek = maxTotalCostPerWeek
    @currency = currency
    @estimatedAdPosition = estimatedAdPosition
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfMatchType
class ArrayOfMatchType < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordEstimatedBid
class ArrayOfKeywordEstimatedBid < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordEstimatedPosition
class ArrayOfKeywordEstimatedPosition < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}MonthAndYear
#   month - SOAP::SOAPInt
#   year - SOAP::SOAPInt
class MonthAndYear
  attr_accessor :month
  attr_accessor :year

  def initialize(month = nil, year = nil)
    @month = month
    @year = year
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordSearchCount
class ArrayOfKeywordSearchCount < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordSearchCount
#   keyword - SOAP::SOAPString
#   historicalSearchCounts - AdCenterWrapper::ArrayOfHistoricalSearchCount
class KeywordSearchCount
  attr_accessor :keyword
  attr_accessor :historicalSearchCounts

  def initialize(keyword = nil, historicalSearchCounts = nil)
    @keyword = keyword
    @historicalSearchCounts = historicalSearchCounts
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfHistoricalSearchCount
class ArrayOfHistoricalSearchCount < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}HistoricalSearchCount
#   searchCount - SOAP::SOAPInt
#   monthAndYear - AdCenterWrapper::MonthAndYear
class HistoricalSearchCount
  attr_accessor :searchCount
  attr_accessor :monthAndYear

  def initialize(searchCount = nil, monthAndYear = nil)
    @searchCount = searchCount
    @monthAndYear = monthAndYear
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordHistoricalPerformance
class ArrayOfKeywordHistoricalPerformance < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordHistoricalPerformance
#   keyword - SOAP::SOAPString
#   keywordKPIs - AdCenterWrapper::ArrayOfKeywordKPI
class KeywordHistoricalPerformance
  attr_accessor :keyword
  attr_accessor :keywordKPIs

  def initialize(keyword = nil, keywordKPIs = nil)
    @keyword = keyword
    @keywordKPIs = keywordKPIs
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordKPI
class ArrayOfKeywordKPI < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordKPI
#   matchType - AdCenterWrapper::MatchType
#   adPosition - AdCenterWrapper::AdPosition
#   clicks - SOAP::SOAPInt
#   impressions - SOAP::SOAPInt
#   averageCPC - SOAP::SOAPDouble
#   cTR - SOAP::SOAPDouble
#   totalCost - SOAP::SOAPDouble
#   averageBid - SOAP::SOAPDouble
class KeywordKPI
  attr_accessor :matchType
  attr_accessor :adPosition
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :averageCPC
  attr_accessor :cTR
  attr_accessor :totalCost
  attr_accessor :averageBid

  def initialize(matchType = nil, adPosition = nil, clicks = nil, impressions = nil, averageCPC = nil, cTR = nil, totalCost = nil, averageBid = nil)
    @matchType = matchType
    @adPosition = adPosition
    @clicks = clicks
    @impressions = impressions
    @averageCPC = averageCPC
    @cTR = cTR
    @totalCost = totalCost
    @averageBid = averageBid
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfKeywordSuggestion
class ArrayOfKeywordSuggestion < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}KeywordSuggestion
#   keyword - SOAP::SOAPString
#   suggestionsAndConfidence - AdCenterWrapper::ArrayOfKeywordAndConfidence
class KeywordSuggestion
  attr_accessor :keyword
  attr_accessor :suggestionsAndConfidence

  def initialize(keyword = nil, suggestionsAndConfidence = nil)
    @keyword = keyword
    @suggestionsAndConfidence = suggestionsAndConfidence
  end
end

# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

# {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   trackingId - SOAP::SOAPString
#   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
class ApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :batchErrors
  attr_accessor :operationErrors

  def initialize(trackingId = nil, batchErrors = nil, operationErrors = nil)
    @trackingId = trackingId
    @batchErrors = batchErrors
    @operationErrors = operationErrors
  end
end

# {https://adapi.microsoft.com}AdApiFaultDetail
#   trackingId - SOAP::SOAPString
#   errors - AdCenterWrapper::ArrayOfAdApiError
class AdApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :errors

  def initialize(trackingId = nil, errors = nil)
    @trackingId = trackingId
    @errors = errors
  end
end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# {https://adapi.microsoft.com}AdApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class AdApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
    @code = code
    @detail = detail
    @errorCode = errorCode
    @message = message
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}TimeInterval
class TimeInterval < ::String
  Last30Days = TimeInterval.new("Last30Days")
  Last7Days = TimeInterval.new("Last7Days")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}Scale
class Scale < ::String
  High = Scale.new("High")
  Low = Scale.new("Low")
  Medium = Scale.new("Medium")
  Minimal = Scale.new("Minimal")
  VeryHigh = Scale.new("VeryHigh")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}TargetAdPosition
class TargetAdPosition < ::String
  MainLine = TargetAdPosition.new("MainLine")
  MainLine1 = TargetAdPosition.new("MainLine1")
  SideBar = TargetAdPosition.new("SideBar")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}MatchType
class MatchType < ::String
  Broad = MatchType.new("Broad")
  Content = MatchType.new("Content")
  Exact = MatchType.new("Exact")
  Phrase = MatchType.new("Phrase")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}Currency
class Currency < ::String
  ArgenintinaNeuvoPeso = Currency.new("ArgenintinaNeuvoPeso")
  AustralianDollar = Currency.new("AustralianDollar")
  BolivarFuerte = Currency.new("BolivarFuerte")
  BrazilianReal = Currency.new("BrazilianReal")
  CanadianDollar = Currency.new("CanadianDollar")
  ChileanPeso = Currency.new("ChileanPeso")
  ColombianPeso = Currency.new("ColombianPeso")
  DanishKrone = Currency.new("DanishKrone")
  EURO = Currency.new("EURO")
  HongKongDollar = Currency.new("HongKongDollar")
  IndianRupee = Currency.new("IndianRupee")
  IndonesianRupiah = Currency.new("IndonesianRupiah")
  IntiAndNewSol = Currency.new("IntiAndNewSol")
  MalaysianDollar = Currency.new("MalaysianDollar")
  MexicanNewPeso = Currency.new("MexicanNewPeso")
  NewZealandDollar = Currency.new("NewZealandDollar")
  NorwegianKrone = Currency.new("NorwegianKrone")
  PhilippinesPeso = Currency.new("PhilippinesPeso")
  RussianRouble = Currency.new("RussianRouble")
  SingaporeDollar = Currency.new("SingaporeDollar")
  SouthKoreanWon = Currency.new("SouthKoreanWon")
  SwedishKrona = Currency.new("SwedishKrona")
  SwissFranc = Currency.new("SwissFranc")
  TaiwanDollar = Currency.new("TaiwanDollar")
  ThailandBaht = Currency.new("ThailandBaht")
  UKPound = Currency.new("UKPound")
  USDollar = Currency.new("USDollar")
  VietnamDong = Currency.new("VietnamDong")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AdPosition
class AdPosition < ::String
  All = AdPosition.new("All")
  MainLine1 = AdPosition.new("MainLine1")
  MainLine2 = AdPosition.new("MainLine2")
  MainLine3 = AdPosition.new("MainLine3")
  MainLine4 = AdPosition.new("MainLine4")
  SideBar1 = AdPosition.new("SideBar1")
  SideBar10 = AdPosition.new("SideBar10")
  SideBar2 = AdPosition.new("SideBar2")
  SideBar3 = AdPosition.new("SideBar3")
  SideBar4 = AdPosition.new("SideBar4")
  SideBar5 = AdPosition.new("SideBar5")
  SideBar6 = AdPosition.new("SideBar6")
  SideBar7 = AdPosition.new("SideBar7")
  SideBar8 = AdPosition.new("SideBar8")
  SideBar9 = AdPosition.new("SideBar9")
end

# {https://adcenter.microsoft.com/v8}GetPublisherKeywordPerformanceRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   timeInterval - AdCenterWrapper::TimeInterval
class GetPublisherKeywordPerformanceRequest
  attr_accessor :keywords
  attr_accessor :timeInterval

  def initialize(keywords = nil, timeInterval = nil)
    @keywords = keywords
    @timeInterval = timeInterval
  end
end

# {https://adcenter.microsoft.com/v8}GetPublisherKeywordPerformanceResponse
#   keywordPerformance - AdCenterWrapper::ArrayOfKeywordPerformance
class GetPublisherKeywordPerformanceResponse
  attr_accessor :keywordPerformance

  def initialize(keywordPerformance = nil)
    @keywordPerformance = keywordPerformance
  end
end

# {https://adcenter.microsoft.com/v8}SuggestKeywordsForUrlRequest
#   url - SOAP::SOAPString
#   language - SOAP::SOAPString
#   maxKeywords - SOAP::SOAPInt
#   minConfidenceScore - SOAP::SOAPDouble
class SuggestKeywordsForUrlRequest
  attr_accessor :url
  attr_accessor :language
  attr_accessor :maxKeywords
  attr_accessor :minConfidenceScore

  def initialize(url = nil, language = nil, maxKeywords = nil, minConfidenceScore = nil)
    @url = url
    @language = language
    @maxKeywords = maxKeywords
    @minConfidenceScore = minConfidenceScore
  end
end

# {https://adcenter.microsoft.com/v8}SuggestKeywordsForUrlResponse
#   keywords - AdCenterWrapper::ArrayOfKeywordAndConfidence
class SuggestKeywordsForUrlResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordIdsRequest
#   keywordIds - AdCenterWrapper::ArrayOflong
#   targetPositionForAds - AdCenterWrapper::TargetAdPosition
class GetEstimatedBidByKeywordIdsRequest
  attr_accessor :keywordIds
  attr_accessor :targetPositionForAds

  def initialize(keywordIds = nil, targetPositionForAds = nil)
    @keywordIds = keywordIds
    @targetPositionForAds = targetPositionForAds
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordIdsResponse
#   keywordEstimatedBids - AdCenterWrapper::ArrayOfKeywordIdEstimatedBid
class GetEstimatedBidByKeywordIdsResponse
  attr_accessor :keywordEstimatedBids

  def initialize(keywordEstimatedBids = nil)
    @keywordEstimatedBids = keywordEstimatedBids
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordIdsRequest
#   keywordIds - AdCenterWrapper::ArrayOflong
#   maxBid - SOAP::SOAPDouble
class GetEstimatedPositionByKeywordIdsRequest
  attr_accessor :keywordIds
  attr_accessor :maxBid

  def initialize(keywordIds = nil, maxBid = nil)
    @keywordIds = keywordIds
    @maxBid = maxBid
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordIdsResponse
#   keywordEstimatedPositions - AdCenterWrapper::ArrayOfKeywordIdEstimatedPosition
class GetEstimatedPositionByKeywordIdsResponse
  attr_accessor :keywordEstimatedPositions

  def initialize(keywordEstimatedPositions = nil)
    @keywordEstimatedPositions = keywordEstimatedPositions
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordsRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   targetPositionForAds - AdCenterWrapper::TargetAdPosition
#   language - SOAP::SOAPString
#   publisherCountries - AdCenterWrapper::ArrayOfstring
#   currency - AdCenterWrapper::Currency
#   matchTypes - AdCenterWrapper::ArrayOfMatchType
class GetEstimatedBidByKeywordsRequest
  attr_accessor :keywords
  attr_accessor :targetPositionForAds
  attr_accessor :language
  attr_accessor :publisherCountries
  attr_accessor :currency
  attr_accessor :matchTypes

  def initialize(keywords = nil, targetPositionForAds = nil, language = nil, publisherCountries = nil, currency = nil, matchTypes = nil)
    @keywords = keywords
    @targetPositionForAds = targetPositionForAds
    @language = language
    @publisherCountries = publisherCountries
    @currency = currency
    @matchTypes = matchTypes
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedBidByKeywordsResponse
#   keywordEstimatedBids - AdCenterWrapper::ArrayOfKeywordEstimatedBid
class GetEstimatedBidByKeywordsResponse
  attr_accessor :keywordEstimatedBids

  def initialize(keywordEstimatedBids = nil)
    @keywordEstimatedBids = keywordEstimatedBids
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordsRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   maxBid - SOAP::SOAPDouble
#   language - SOAP::SOAPString
#   publisherCountries - AdCenterWrapper::ArrayOfstring
#   currency - AdCenterWrapper::Currency
#   matchTypes - AdCenterWrapper::ArrayOfMatchType
class GetEstimatedPositionByKeywordsRequest
  attr_accessor :keywords
  attr_accessor :maxBid
  attr_accessor :language
  attr_accessor :publisherCountries
  attr_accessor :currency
  attr_accessor :matchTypes

  def initialize(keywords = nil, maxBid = nil, language = nil, publisherCountries = nil, currency = nil, matchTypes = nil)
    @keywords = keywords
    @maxBid = maxBid
    @language = language
    @publisherCountries = publisherCountries
    @currency = currency
    @matchTypes = matchTypes
  end
end

# {https://adcenter.microsoft.com/v8}GetEstimatedPositionByKeywordsResponse
#   keywordEstimatedPositions - AdCenterWrapper::ArrayOfKeywordEstimatedPosition
class GetEstimatedPositionByKeywordsResponse
  attr_accessor :keywordEstimatedPositions

  def initialize(keywordEstimatedPositions = nil)
    @keywordEstimatedPositions = keywordEstimatedPositions
  end
end

# {https://adcenter.microsoft.com/v8}GetHistoricalSearchCountRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   language - SOAP::SOAPString
#   publisherCountries - AdCenterWrapper::ArrayOfstring
#   startMonthAndYear - AdCenterWrapper::MonthAndYear
#   endMonthAndYear - AdCenterWrapper::MonthAndYear
class GetHistoricalSearchCountRequest
  attr_accessor :keywords
  attr_accessor :language
  attr_accessor :publisherCountries
  attr_accessor :startMonthAndYear
  attr_accessor :endMonthAndYear

  def initialize(keywords = nil, language = nil, publisherCountries = nil, startMonthAndYear = nil, endMonthAndYear = nil)
    @keywords = keywords
    @language = language
    @publisherCountries = publisherCountries
    @startMonthAndYear = startMonthAndYear
    @endMonthAndYear = endMonthAndYear
  end
end

# {https://adcenter.microsoft.com/v8}GetHistoricalSearchCountResponse
#   keywordSearchCounts - AdCenterWrapper::ArrayOfKeywordSearchCount
class GetHistoricalSearchCountResponse
  attr_accessor :keywordSearchCounts

  def initialize(keywordSearchCounts = nil)
    @keywordSearchCounts = keywordSearchCounts
  end
end

# {https://adcenter.microsoft.com/v8}GetHistoricalKeywordPerformanceRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   timeInterval - AdCenterWrapper::TimeInterval
#   targetAdPosition - AdCenterWrapper::AdPosition
#   matchType - AdCenterWrapper::MatchType
#   language - SOAP::SOAPString
#   publisherCountries - AdCenterWrapper::ArrayOfstring
class GetHistoricalKeywordPerformanceRequest
  attr_accessor :keywords
  attr_accessor :timeInterval
  attr_accessor :targetAdPosition
  attr_accessor :matchType
  attr_accessor :language
  attr_accessor :publisherCountries

  def initialize(keywords = nil, timeInterval = nil, targetAdPosition = nil, matchType = nil, language = nil, publisherCountries = nil)
    @keywords = keywords
    @timeInterval = timeInterval
    @targetAdPosition = targetAdPosition
    @matchType = matchType
    @language = language
    @publisherCountries = publisherCountries
  end
end

# {https://adcenter.microsoft.com/v8}GetHistoricalKeywordPerformanceResponse
#   keywordHistoricalPerformances - AdCenterWrapper::ArrayOfKeywordHistoricalPerformance
class GetHistoricalKeywordPerformanceResponse
  attr_accessor :keywordHistoricalPerformances

  def initialize(keywordHistoricalPerformances = nil)
    @keywordHistoricalPerformances = keywordHistoricalPerformances
  end
end

# {https://adcenter.microsoft.com/v8}SuggestKeywordsFromExistingKeywordsRequest
#   keywords - AdCenterWrapper::ArrayOfstring
#   language - SOAP::SOAPString
#   publisherCountries - AdCenterWrapper::ArrayOfstring
#   maxSuggestionsPerKeyword - SOAP::SOAPInt
class SuggestKeywordsFromExistingKeywordsRequest
  attr_accessor :keywords
  attr_accessor :language
  attr_accessor :publisherCountries
  attr_accessor :maxSuggestionsPerKeyword

  def initialize(keywords = nil, language = nil, publisherCountries = nil, maxSuggestionsPerKeyword = nil)
    @keywords = keywords
    @language = language
    @publisherCountries = publisherCountries
    @maxSuggestionsPerKeyword = maxSuggestionsPerKeyword
  end
end

# {https://adcenter.microsoft.com/v8}SuggestKeywordsFromExistingKeywordsResponse
#   keywordSuggestions - AdCenterWrapper::ArrayOfKeywordSuggestion
class SuggestKeywordsFromExistingKeywordsResponse
  attr_accessor :keywordSuggestions

  def initialize(keywordSuggestions = nil)
    @keywordSuggestions = keywordSuggestions
  end
end


end
