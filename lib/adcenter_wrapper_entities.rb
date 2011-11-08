require 'xsd/qname'

module AdCenterWrapper

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts}BudgetLimitType
class BudgetLimitType < ::String
  DailyBudgetAccelerated = BudgetLimitType.new("DailyBudgetAccelerated")
  DailyBudgetStandard = BudgetLimitType.new("DailyBudgetStandard")
  MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
end

# # {https://adcenter.microsoft.com/v8}BudgetLimitType
# class BudgetLimitType < ::String
#   DailyBudgetAccelerated = BudgetLimitType.new("DailyBudgetAccelerated")
#   DailyBudgetStandard = BudgetLimitType.new("DailyBudgetStandard")
#   MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
# end

# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAssignedQuotaRequest
#   class GetAssignedQuotaRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAssignedQuotaResponse
#   #   assignedQuota - SOAP::SOAPLong
#   class GetAssignedQuotaResponse
#     attr_accessor :assignedQuota
# 
#     def initialize(assignedQuota = nil)
#       @assignedQuota = assignedQuota
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetRemainingQuotaRequest
#   class GetRemainingQuotaRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetRemainingQuotaResponse
#   #   remainingQuota - SOAP::SOAPLong
#   class GetRemainingQuotaResponse
#     attr_accessor :remainingQuota
# 
#     def initialize(remainingQuota = nil)
#       @remainingQuota = remainingQuota
#     end
#   end
# 
# 
#   # {https://adcenter.microsoft.com/v7}Ad
#   #   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   #   id - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AdStatus
#   #   type - AdCenterWrapper::AdType
#   class Ad
#     attr_accessor :editorialStatus
#     attr_accessor :id
#     attr_accessor :status
#     attr_accessor :type
# 
#     def initialize(editorialStatus = nil, id = nil, status = nil, type = nil)
#       @editorialStatus = editorialStatus
#       @id = id
#       @status = status
#       @type = type
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MobileAd
#   #   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   #   id - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AdStatus
#   #   type - AdCenterWrapper::AdType
#   #   businessName - SOAP::SOAPString
#   #   destinationUrl - SOAP::SOAPString
#   #   displayUrl - SOAP::SOAPString
#   #   phoneNumber - SOAP::SOAPString
#   #   text - SOAP::SOAPString
#   #   title - SOAP::SOAPString
#   class MobileAd < Ad
#     attr_accessor :editorialStatus
#     attr_accessor :id
#     attr_accessor :status
#     attr_accessor :type
#     attr_accessor :businessName
#     attr_accessor :destinationUrl
#     attr_accessor :displayUrl
#     attr_accessor :phoneNumber
#     attr_accessor :text
#     attr_accessor :title
# 
#     def initialize(editorialStatus = nil, id = nil, status = nil, type = nil, businessName = nil, destinationUrl = nil, displayUrl = nil, phoneNumber = nil, text = nil, title = nil)
#       @editorialStatus = editorialStatus
#       @id = id
#       @status = status
#       @type = type
#       @businessName = businessName
#       @destinationUrl = destinationUrl
#       @displayUrl = displayUrl
#       @phoneNumber = phoneNumber
#       @text = text
#       @title = title
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TextAd
#   #   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   #   id - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AdStatus
#   #   type - AdCenterWrapper::AdType
#   #   destinationUrl - SOAP::SOAPString
#   #   displayUrl - SOAP::SOAPString
#   #   text - SOAP::SOAPString
#   #   title - SOAP::SOAPString
#   class TextAd < Ad
#     attr_accessor :editorialStatus
#     attr_accessor :id
#     attr_accessor :status
#     attr_accessor :type
#     attr_accessor :destinationUrl
#     attr_accessor :displayUrl
#     attr_accessor :text
#     attr_accessor :title
# 
#     def initialize(editorialStatus = nil, id = nil, status = nil, type = nil, destinationUrl = nil, displayUrl = nil, text = nil, title = nil)
#       @editorialStatus = editorialStatus
#       @id = id
#       @status = status
#       @type = type
#       @destinationUrl = destinationUrl
#       @displayUrl = displayUrl
#       @text = text
#       @title = title
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBehavioralBid
#   class ArrayOfBehavioralBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralBid
#   #   bid - AdCenterWrapper::Bid
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   #   segmentId - SOAP::SOAPLong
#   #   status - AdCenterWrapper::BehavioralBidStatus
#   class BehavioralBid
#     attr_accessor :bid
#     attr_accessor :id
#     attr_accessor :name
#     attr_accessor :segmentId
#     attr_accessor :status
# 
#     def initialize(bid = nil, id = nil, name = nil, segmentId = nil, status = nil)
#       @bid = bid
#       @id = id
#       @name = name
#       @segmentId = segmentId
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Bid
#   #   amount - SOAP::SOAPDouble
#   class Bid
#     attr_accessor :amount
# 
#     def initialize(amount = nil)
#       @amount = amount
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBatchError
#   class ArrayOfBatchError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BatchError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   index - SOAP::SOAPInt
#   #   message - SOAP::SOAPString
#   class BatchError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :errorCode
#     attr_accessor :index
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, errorCode = nil, index = nil, message = nil)
#       @code = code
#       @details = details
#       @errorCode = errorCode
#       @index = index
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfOperationError
#   class ArrayOfOperationError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}OperationError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class OperationError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, errorCode = nil, message = nil)
#       @code = code
#       @details = details
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSegment
#   class ArrayOfSegment < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Segment
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   class Segment
#     attr_accessor :id
#     attr_accessor :name
# 
#     def initialize(id = nil, name = nil)
#       @id = id
#       @name = name
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfEditorialReasonCollection
#   class ArrayOfEditorialReasonCollection < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}EditorialReasonCollection
#   #   adOrKeywordId - SOAP::SOAPLong
#   #   reasons - AdCenterWrapper::ArrayOfEditorialReason
#   class EditorialReasonCollection
#     attr_accessor :adOrKeywordId
#     attr_accessor :reasons
# 
#     def initialize(adOrKeywordId = nil, reasons = nil)
#       @adOrKeywordId = adOrKeywordId
#       @reasons = reasons
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfEditorialReason
#   class ArrayOfEditorialReason < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}EditorialReason
#   #   location - AdCenterWrapper::AdComponent
#   #   reasonCode - SOAP::SOAPInt
#   #   term - SOAP::SOAPString
#   class EditorialReason
#     attr_accessor :location
#     attr_accessor :reasonCode
#     attr_accessor :term
# 
#     def initialize(location = nil, reasonCode = nil, term = nil)
#       @location = location
#       @reasonCode = reasonCode
#       @term = term
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAd
#   class ArrayOfAd < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfEditorialError
#   class ArrayOfEditorialError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}EditorialError
#   #   appealable - SOAP::SOAPBoolean
#   #   code - SOAP::SOAPInt
#   #   disapprovedText - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   index - SOAP::SOAPInt
#   #   message - SOAP::SOAPString
#   class EditorialError
#     attr_accessor :appealable
#     attr_accessor :code
#     attr_accessor :disapprovedText
#     attr_accessor :errorCode
#     attr_accessor :index
#     attr_accessor :message
# 
#     def initialize(appealable = nil, code = nil, disapprovedText = nil, errorCode = nil, index = nil, message = nil)
#       @appealable = appealable
#       @code = code
#       @disapprovedText = disapprovedText
#       @errorCode = errorCode
#       @index = index
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfKeyword
#   class ArrayOfKeyword < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Keyword
#   #   broadMatchBid - AdCenterWrapper::Bid
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   contentMatchBid - AdCenterWrapper::Bid
#   #   editorialStatus - AdCenterWrapper::KeywordEditorialStatus
#   #   exactMatchBid - AdCenterWrapper::Bid
#   #   id - SOAP::SOAPLong
#   #   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   #   overridePriority - AdCenterWrapper::OverridePriority
#   #   param1 - SOAP::SOAPString
#   #   param2 - SOAP::SOAPString
#   #   param3 - SOAP::SOAPString
#   #   phraseMatchBid - AdCenterWrapper::Bid
#   #   status - AdCenterWrapper::KeywordStatus
#   #   text - SOAP::SOAPString
#   class Keyword
#     attr_accessor :broadMatchBid
#     attr_accessor :cashBackInfo
#     attr_accessor :contentMatchBid
#     attr_accessor :editorialStatus
#     attr_accessor :exactMatchBid
#     attr_accessor :id
#     attr_accessor :negativeKeywords
#     attr_accessor :overridePriority
#     attr_accessor :param1
#     attr_accessor :param2
#     attr_accessor :param3
#     attr_accessor :phraseMatchBid
#     attr_accessor :status
#     attr_accessor :text
# 
#     def initialize(broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, editorialStatus = nil, exactMatchBid = nil, id = nil, negativeKeywords = nil, overridePriority = nil, param1 = nil, param2 = nil, param3 = nil, phraseMatchBid = nil, status = nil, text = nil)
#       @broadMatchBid = broadMatchBid
#       @cashBackInfo = cashBackInfo
#       @contentMatchBid = contentMatchBid
#       @editorialStatus = editorialStatus
#       @exactMatchBid = exactMatchBid
#       @id = id
#       @negativeKeywords = negativeKeywords
#       @overridePriority = overridePriority
#       @param1 = param1
#       @param2 = param2
#       @param3 = param3
#       @phraseMatchBid = phraseMatchBid
#       @status = status
#       @text = text
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CashBackInfo
#   #   cashBackAmount - SOAP::SOAPDouble
#   #   cashBackStatus - AdCenterWrapper::CashBackStatus
#   #   cashBackText - SOAP::SOAPString
#   class CashBackInfo
#     attr_accessor :cashBackAmount
#     attr_accessor :cashBackStatus
#     attr_accessor :cashBackText
# 
#     def initialize(cashBackAmount = nil, cashBackStatus = nil, cashBackText = nil)
#       @cashBackAmount = cashBackAmount
#       @cashBackStatus = cashBackStatus
#       @cashBackText = cashBackText
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfKeywordBid
#   class ArrayOfKeywordBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordBid
#   #   broadMatchBid - SOAP::SOAPDouble
#   #   exactMatchBid - SOAP::SOAPDouble
#   #   keyword - SOAP::SOAPString
#   #   phraseMatchBid - SOAP::SOAPDouble
#   class KeywordBid
#     attr_accessor :broadMatchBid
#     attr_accessor :exactMatchBid
#     attr_accessor :keyword
#     attr_accessor :phraseMatchBid
# 
#     def initialize(broadMatchBid = nil, exactMatchBid = nil, keyword = nil, phraseMatchBid = nil)
#       @broadMatchBid = broadMatchBid
#       @exactMatchBid = exactMatchBid
#       @keyword = keyword
#       @phraseMatchBid = phraseMatchBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfKeywordEstimate
#   class ArrayOfKeywordEstimate < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordEstimate
#   #   averageMonthlyCost - SOAP::SOAPDouble
#   #   averageMonthlyPosition - SOAP::SOAPInt
#   #   broadKeywordEstimate - AdCenterWrapper::MatchTypeEstimate
#   #   estimatedTotalMonthlyImpressions - SOAP::SOAPInt
#   #   exactKeywordEstimate - AdCenterWrapper::MatchTypeEstimate
#   #   phraseKeywordEstimate - AdCenterWrapper::MatchTypeEstimate
#   class KeywordEstimate
#     attr_accessor :averageMonthlyCost
#     attr_accessor :averageMonthlyPosition
#     attr_accessor :broadKeywordEstimate
#     attr_accessor :estimatedTotalMonthlyImpressions
#     attr_accessor :exactKeywordEstimate
#     attr_accessor :phraseKeywordEstimate
# 
#     def initialize(averageMonthlyCost = nil, averageMonthlyPosition = nil, broadKeywordEstimate = nil, estimatedTotalMonthlyImpressions = nil, exactKeywordEstimate = nil, phraseKeywordEstimate = nil)
#       @averageMonthlyCost = averageMonthlyCost
#       @averageMonthlyPosition = averageMonthlyPosition
#       @broadKeywordEstimate = broadKeywordEstimate
#       @estimatedTotalMonthlyImpressions = estimatedTotalMonthlyImpressions
#       @exactKeywordEstimate = exactKeywordEstimate
#       @phraseKeywordEstimate = phraseKeywordEstimate
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MatchTypeEstimate
#   #   monthlyCost - SOAP::SOAPDouble
#   #   monthlyImpressions - SOAP::SOAPInt
#   #   position - SOAP::SOAPInt
#   class MatchTypeEstimate
#     attr_accessor :monthlyCost
#     attr_accessor :monthlyImpressions
#     attr_accessor :position
# 
#     def initialize(monthlyCost = nil, monthlyImpressions = nil, position = nil)
#       @monthlyCost = monthlyCost
#       @monthlyImpressions = monthlyImpressions
#       @position = position
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBusiness
#   class ArrayOfBusiness < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Business
#   #   addressLine1 - SOAP::SOAPString
#   #   addressLine2 - SOAP::SOAPString
#   #   businessImageIcon - AdCenterWrapper::BusinessImageIcon
#   #   city - SOAP::SOAPString
#   #   countryOrRegion - SOAP::SOAPString
#   #   description - SOAP::SOAPString
#   #   email - SOAP::SOAPString
#   #   geoCodeStatus - AdCenterWrapper::BusinessGeoCodeStatus
#   #   hrsOfOperation - AdCenterWrapper::ArrayOfHoursOfOperation
#   #   id - SOAP::SOAPLong
#   #   isOpen24Hours - SOAP::SOAPBoolean
#   #   latitudeDegrees - SOAP::SOAPDouble
#   #   longitudeDegrees - SOAP::SOAPDouble
#   #   name - SOAP::SOAPString
#   #   otherPaymentTypeDesc - SOAP::SOAPString
#   #   payment - AdCenterWrapper::ArrayOfPaymentType
#   #   phone - SOAP::SOAPString
#   #   stateOrProvince - SOAP::SOAPString
#   #   status - AdCenterWrapper::BusinessStatus
#   #   uRL - SOAP::SOAPString
#   #   zipOrPostalCode - SOAP::SOAPString
#   class Business
#     attr_accessor :addressLine1
#     attr_accessor :addressLine2
#     attr_accessor :businessImageIcon
#     attr_accessor :city
#     attr_accessor :countryOrRegion
#     attr_accessor :description
#     attr_accessor :email
#     attr_accessor :geoCodeStatus
#     attr_accessor :hrsOfOperation
#     attr_accessor :id
#     attr_accessor :isOpen24Hours
#     attr_accessor :latitudeDegrees
#     attr_accessor :longitudeDegrees
#     attr_accessor :name
#     attr_accessor :otherPaymentTypeDesc
#     attr_accessor :payment
#     attr_accessor :phone
#     attr_accessor :stateOrProvince
#     attr_accessor :status
#     attr_accessor :uRL
#     attr_accessor :zipOrPostalCode
# 
#     def initialize(addressLine1 = nil, addressLine2 = nil, businessImageIcon = nil, city = nil, countryOrRegion = nil, description = nil, email = nil, geoCodeStatus = nil, hrsOfOperation = nil, id = nil, isOpen24Hours = nil, latitudeDegrees = nil, longitudeDegrees = nil, name = nil, otherPaymentTypeDesc = nil, payment = nil, phone = nil, stateOrProvince = nil, status = nil, uRL = nil, zipOrPostalCode = nil)
#       @addressLine1 = addressLine1
#       @addressLine2 = addressLine2
#       @businessImageIcon = businessImageIcon
#       @city = city
#       @countryOrRegion = countryOrRegion
#       @description = description
#       @email = email
#       @geoCodeStatus = geoCodeStatus
#       @hrsOfOperation = hrsOfOperation
#       @id = id
#       @isOpen24Hours = isOpen24Hours
#       @latitudeDegrees = latitudeDegrees
#       @longitudeDegrees = longitudeDegrees
#       @name = name
#       @otherPaymentTypeDesc = otherPaymentTypeDesc
#       @payment = payment
#       @phone = phone
#       @stateOrProvince = stateOrProvince
#       @status = status
#       @uRL = uRL
#       @zipOrPostalCode = zipOrPostalCode
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessImageIcon
#   #   customIconAssetId - SOAP::SOAPLong
#   #   standardBusinessIcon - AdCenterWrapper::StandardBusinessIcon
#   class BusinessImageIcon
#     attr_accessor :customIconAssetId
#     attr_accessor :standardBusinessIcon
# 
#     def initialize(customIconAssetId = nil, standardBusinessIcon = nil)
#       @customIconAssetId = customIconAssetId
#       @standardBusinessIcon = standardBusinessIcon
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfHoursOfOperation
#   class ArrayOfHoursOfOperation < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}HoursOfOperation
#   #   day - AdCenterWrapper::Day
#   #   openTime1 - AdCenterWrapper::DayTimeInterval
#   #   openTime2 - AdCenterWrapper::DayTimeInterval
#   class HoursOfOperation
#     attr_accessor :day
#     attr_accessor :openTime1
#     attr_accessor :openTime2
# 
#     def initialize(day = nil, openTime1 = nil, openTime2 = nil)
#       @day = day
#       @openTime1 = openTime1
#       @openTime2 = openTime2
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DayTimeInterval
#   #   m_begin - AdCenterWrapper::TimeOfTheDay
#   #   m_end - AdCenterWrapper::TimeOfTheDay
#   class DayTimeInterval
#     def m_begin
#       @v_begin
#     end
# 
#     def m_begin=(value)
#       @v_begin = value
#     end
# 
#     def m_end
#       @v_end
#     end
# 
#     def m_end=(value)
#       @v_end = value
#     end
# 
#     def initialize(v_begin = nil, v_end = nil)
#       @v_begin = v_begin
#       @v_end = v_end
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TimeOfTheDay
#   #   hour - SOAP::SOAPShort
#   #   minute - SOAP::SOAPShort
#   class TimeOfTheDay
#     attr_accessor :hour
#     attr_accessor :minute
# 
#     def initialize(hour = nil, minute = nil)
#       @hour = hour
#       @minute = minute
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfPaymentType
#   class ArrayOfPaymentType < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBusinessInfo
#   class ArrayOfBusinessInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessInfo
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   class BusinessInfo
#     attr_accessor :id
#     attr_accessor :name
# 
#     def initialize(id = nil, name = nil)
#       @id = id
#       @name = name
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSitePlacement
#   class ArrayOfSitePlacement < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SitePlacement
#   #   bid - AdCenterWrapper::Bid
#   #   id - SOAP::SOAPLong
#   #   placementId - SOAP::SOAPLong
#   #   status - AdCenterWrapper::SitePlacementStatus
#   #   url - SOAP::SOAPString
#   class SitePlacement
#     attr_accessor :bid
#     attr_accessor :id
#     attr_accessor :placementId
#     attr_accessor :status
#     attr_accessor :url
# 
#     def initialize(bid = nil, id = nil, placementId = nil, status = nil, url = nil)
#       @bid = bid
#       @id = id
#       @placementId = placementId
#       @status = status
#       @url = url
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfArrayOfPlacementDetail
#   class ArrayOfArrayOfPlacementDetail < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfPlacementDetail
#   class ArrayOfPlacementDetail < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PlacementDetail
#   #   impressionsRangePerDay - AdCenterWrapper::ImpressionsPerDayRange
#   #   pathName - SOAP::SOAPString
#   #   placementId - SOAP::SOAPLong
#   #   supportedMediaTypes - AdCenterWrapper::ArrayOfMediaType
#   class PlacementDetail
#     attr_accessor :impressionsRangePerDay
#     attr_accessor :pathName
#     attr_accessor :placementId
#     attr_accessor :supportedMediaTypes
# 
#     def initialize(impressionsRangePerDay = nil, pathName = nil, placementId = nil, supportedMediaTypes = nil)
#       @impressionsRangePerDay = impressionsRangePerDay
#       @pathName = pathName
#       @placementId = placementId
#       @supportedMediaTypes = supportedMediaTypes
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ImpressionsPerDayRange
#   #   maximum - SOAP::SOAPInt
#   #   minimum - SOAP::SOAPInt
#   class ImpressionsPerDayRange
#     attr_accessor :maximum
#     attr_accessor :minimum
# 
#     def initialize(maximum = nil, minimum = nil)
#       @maximum = maximum
#       @minimum = minimum
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfMediaType
#   class ArrayOfMediaType < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MediaType
#   #   dimensions - AdCenterWrapper::ArrayOfDimension
#   #   name - SOAP::SOAPString
#   class MediaType
#     attr_accessor :dimensions
#     attr_accessor :name
# 
#     def initialize(dimensions = nil, name = nil)
#       @dimensions = dimensions
#       @name = name
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfDimension
#   class ArrayOfDimension < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Dimension
#   #   height - SOAP::SOAPInt
#   #   width - SOAP::SOAPInt
#   class Dimension
#     attr_accessor :height
#     attr_accessor :width
# 
#     def initialize(height = nil, width = nil)
#       @height = height
#       @width = width
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCampaign
#   class ArrayOfCampaign < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Campaign
#   #   budgetType - AdCenterWrapper::BudgetLimitType
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   conversionTrackingEnabled - SOAP::SOAPBoolean
#   #   conversionTrackingScript - SOAP::SOAPString
#   #   dailyBudget - SOAP::SOAPDouble
#   #   daylightSaving - SOAP::SOAPBoolean
#   #   description - SOAP::SOAPString
#   #   id - SOAP::SOAPLong
#   #   monthlyBudget - SOAP::SOAPDouble
#   #   name - SOAP::SOAPString
#   #   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   #   negativeSiteUrls - AdCenterWrapper::ArrayOfstring
#   #   status - AdCenterWrapper::CampaignStatus
#   #   timeZone - SOAP::SOAPString
#   class Campaign
#     attr_accessor :budgetType
#     attr_accessor :cashBackInfo
#     attr_accessor :conversionTrackingEnabled
#     attr_accessor :conversionTrackingScript
#     attr_accessor :dailyBudget
#     attr_accessor :daylightSaving
#     attr_accessor :description
#     attr_accessor :id
#     attr_accessor :monthlyBudget
#     attr_accessor :name
#     attr_accessor :negativeKeywords
#     attr_accessor :negativeSiteUrls
#     attr_accessor :status
#     attr_accessor :timeZone
# 
#     def initialize(budgetType = nil, cashBackInfo = nil, conversionTrackingEnabled = nil, conversionTrackingScript = nil, dailyBudget = nil, daylightSaving = nil, description = nil, id = nil, monthlyBudget = nil, name = nil, negativeKeywords = nil, negativeSiteUrls = nil, status = nil, timeZone = nil)
#       @budgetType = budgetType
#       @cashBackInfo = cashBackInfo
#       @conversionTrackingEnabled = conversionTrackingEnabled
#       @conversionTrackingScript = conversionTrackingScript
#       @dailyBudget = dailyBudget
#       @daylightSaving = daylightSaving
#       @description = description
#       @id = id
#       @monthlyBudget = monthlyBudget
#       @name = name
#       @negativeKeywords = negativeKeywords
#       @negativeSiteUrls = negativeSiteUrls
#       @status = status
#       @timeZone = timeZone
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCampaignInfo
#   class ArrayOfCampaignInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignInfo
#   #   budgetType - AdCenterWrapper::BudgetLimitType
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   conversionTrackingEnabled - SOAP::SOAPBoolean
#   #   conversionTrackingScript - SOAP::SOAPString
#   #   dailyBudget - SOAP::SOAPDouble
#   #   daylightSaving - SOAP::SOAPBoolean
#   #   description - SOAP::SOAPString
#   #   id - SOAP::SOAPLong
#   #   monthlyBudget - SOAP::SOAPDouble
#   #   name - SOAP::SOAPString
#   #   status - AdCenterWrapper::CampaignStatus
#   #   timeZone - SOAP::SOAPString
#   class CampaignInfo
#     attr_accessor :budgetType
#     attr_accessor :cashBackInfo
#     attr_accessor :conversionTrackingEnabled
#     attr_accessor :conversionTrackingScript
#     attr_accessor :dailyBudget
#     attr_accessor :daylightSaving
#     attr_accessor :description
#     attr_accessor :id
#     attr_accessor :monthlyBudget
#     attr_accessor :name
#     attr_accessor :status
#     attr_accessor :timeZone
# 
#     def initialize(budgetType = nil, cashBackInfo = nil, conversionTrackingEnabled = nil, conversionTrackingScript = nil, dailyBudget = nil, daylightSaving = nil, description = nil, id = nil, monthlyBudget = nil, name = nil, status = nil, timeZone = nil)
#       @budgetType = budgetType
#       @cashBackInfo = cashBackInfo
#       @conversionTrackingEnabled = conversionTrackingEnabled
#       @conversionTrackingScript = conversionTrackingScript
#       @dailyBudget = dailyBudget
#       @daylightSaving = daylightSaving
#       @description = description
#       @id = id
#       @monthlyBudget = monthlyBudget
#       @name = name
#       @status = status
#       @timeZone = timeZone
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCampaignNegativeKeywords
#   class ArrayOfCampaignNegativeKeywords < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignNegativeKeywords
#   #   campaignId - SOAP::SOAPLong
#   #   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   class CampaignNegativeKeywords
#     attr_accessor :campaignId
#     attr_accessor :negativeKeywords
# 
#     def initialize(campaignId = nil, negativeKeywords = nil)
#       @campaignId = campaignId
#       @negativeKeywords = negativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdGroup
#   class ArrayOfAdGroup < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroup
#   #   adDistribution - (any)
#   #   biddingModel - AdCenterWrapper::BiddingModel
#   #   broadMatchBid - AdCenterWrapper::Bid
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   contentMatchBid - AdCenterWrapper::Bid
#   #   endDate - AdCenterWrapper::Date
#   #   exactMatchBid - AdCenterWrapper::Bid
#   #   id - SOAP::SOAPLong
#   #   languageAndRegion - SOAP::SOAPString
#   #   name - SOAP::SOAPString
#   #   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   #   negativeSiteUrls - AdCenterWrapper::ArrayOfstring
#   #   phraseMatchBid - AdCenterWrapper::Bid
#   #   pricingModel - AdCenterWrapper::PricingModel
#   #   startDate - AdCenterWrapper::Date
#   #   status - AdCenterWrapper::AdGroupStatus
#   class AdGroup
#     attr_accessor :adDistribution
#     attr_accessor :biddingModel
#     attr_accessor :broadMatchBid
#     attr_accessor :cashBackInfo
#     attr_accessor :contentMatchBid
#     attr_accessor :endDate
#     attr_accessor :exactMatchBid
#     attr_accessor :id
#     attr_accessor :languageAndRegion
#     attr_accessor :name
#     attr_accessor :negativeKeywords
#     attr_accessor :negativeSiteUrls
#     attr_accessor :phraseMatchBid
#     attr_accessor :pricingModel
#     attr_accessor :startDate
#     attr_accessor :status
# 
#     def initialize(adDistribution = nil, biddingModel = nil, broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, endDate = nil, exactMatchBid = nil, id = nil, languageAndRegion = nil, name = nil, negativeKeywords = nil, negativeSiteUrls = nil, phraseMatchBid = nil, pricingModel = nil, startDate = nil, status = nil)
#       @adDistribution = adDistribution
#       @biddingModel = biddingModel
#       @broadMatchBid = broadMatchBid
#       @cashBackInfo = cashBackInfo
#       @contentMatchBid = contentMatchBid
#       @endDate = endDate
#       @exactMatchBid = exactMatchBid
#       @id = id
#       @languageAndRegion = languageAndRegion
#       @name = name
#       @negativeKeywords = negativeKeywords
#       @negativeSiteUrls = negativeSiteUrls
#       @phraseMatchBid = phraseMatchBid
#       @pricingModel = pricingModel
#       @startDate = startDate
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Date
#   #   day - SOAP::SOAPInt
#   #   month - SOAP::SOAPInt
#   #   year - SOAP::SOAPInt
#   class Date
#     attr_accessor :day
#     attr_accessor :month
#     attr_accessor :year
# 
#     def initialize(day = nil, month = nil, year = nil)
#       @day = day
#       @month = month
#       @year = year
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdGroupInfo
#   class ArrayOfAdGroupInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupInfo
#   #   adDistribution - (any)
#   #   biddingModel - AdCenterWrapper::BiddingModel
#   #   broadMatchBid - AdCenterWrapper::Bid
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   contentMatchBid - AdCenterWrapper::Bid
#   #   endDate - AdCenterWrapper::Date
#   #   exactMatchBid - AdCenterWrapper::Bid
#   #   id - SOAP::SOAPLong
#   #   languageAndRegion - SOAP::SOAPString
#   #   name - SOAP::SOAPString
#   #   phraseMatchBid - AdCenterWrapper::Bid
#   #   pricingModel - AdCenterWrapper::PricingModel
#   #   startDate - AdCenterWrapper::Date
#   #   status - AdCenterWrapper::AdGroupStatus
#   class AdGroupInfo
#     attr_accessor :adDistribution
#     attr_accessor :biddingModel
#     attr_accessor :broadMatchBid
#     attr_accessor :cashBackInfo
#     attr_accessor :contentMatchBid
#     attr_accessor :endDate
#     attr_accessor :exactMatchBid
#     attr_accessor :id
#     attr_accessor :languageAndRegion
#     attr_accessor :name
#     attr_accessor :phraseMatchBid
#     attr_accessor :pricingModel
#     attr_accessor :startDate
#     attr_accessor :status
# 
#     def initialize(adDistribution = nil, biddingModel = nil, broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, endDate = nil, exactMatchBid = nil, id = nil, languageAndRegion = nil, name = nil, phraseMatchBid = nil, pricingModel = nil, startDate = nil, status = nil)
#       @adDistribution = adDistribution
#       @biddingModel = biddingModel
#       @broadMatchBid = broadMatchBid
#       @cashBackInfo = cashBackInfo
#       @contentMatchBid = contentMatchBid
#       @endDate = endDate
#       @exactMatchBid = exactMatchBid
#       @id = id
#       @languageAndRegion = languageAndRegion
#       @name = name
#       @phraseMatchBid = phraseMatchBid
#       @pricingModel = pricingModel
#       @startDate = startDate
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdGroupNegativeKeywords
#   class ArrayOfAdGroupNegativeKeywords < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupNegativeKeywords
#   #   adGroupId - SOAP::SOAPLong
#   #   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   class AdGroupNegativeKeywords
#     attr_accessor :adGroupId
#     attr_accessor :negativeKeywords
# 
#     def initialize(adGroupId = nil, negativeKeywords = nil)
#       @adGroupId = adGroupId
#       @negativeKeywords = negativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Target
#   #   age - AdCenterWrapper::AgeTarget
#   #   behavior - AdCenterWrapper::BehavioralTarget
#   #   day - AdCenterWrapper::DayTarget
#   #   device - AdCenterWrapper::DeviceTarget
#   #   gender - AdCenterWrapper::GenderTarget
#   #   hour - AdCenterWrapper::HourTarget
#   #   id - SOAP::SOAPLong
#   #   isLibraryTarget - SOAP::SOAPBoolean
#   #   location - AdCenterWrapper::LocationTarget
#   #   name - SOAP::SOAPString
#   #   segment - AdCenterWrapper::SegmentTarget
#   class Target
#     attr_accessor :age
#     attr_accessor :behavior
#     attr_accessor :day
#     attr_accessor :device
#     attr_accessor :gender
#     attr_accessor :hour
#     attr_accessor :id
#     attr_accessor :isLibraryTarget
#     attr_accessor :location
#     attr_accessor :name
#     attr_accessor :segment
# 
#     def initialize(age = nil, behavior = nil, day = nil, device = nil, gender = nil, hour = nil, id = nil, isLibraryTarget = nil, location = nil, name = nil, segment = nil)
#       @age = age
#       @behavior = behavior
#       @day = day
#       @device = device
#       @gender = gender
#       @hour = hour
#       @id = id
#       @isLibraryTarget = isLibraryTarget
#       @location = location
#       @name = name
#       @segment = segment
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeTarget
#   #   bids - AdCenterWrapper::ArrayOfAgeTargetBid
#   class AgeTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAgeTargetBid
#   class ArrayOfAgeTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeTargetBid
#   #   age - AdCenterWrapper::AgeRange
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class AgeTargetBid
#     attr_accessor :age
#     attr_accessor :incrementalBid
# 
#     def initialize(age = nil, incrementalBid = nil)
#       @age = age
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralTarget
#   #   bids - AdCenterWrapper::ArrayOfBehavioralTargetBid
#   class BehavioralTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBehavioralTargetBid
#   class ArrayOfBehavioralTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralTargetBid
#   #   behavioralName - SOAP::SOAPString
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class BehavioralTargetBid
#     attr_accessor :behavioralName
#     attr_accessor :incrementalBid
# 
#     def initialize(behavioralName = nil, incrementalBid = nil)
#       @behavioralName = behavioralName
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DayTarget
#   #   bids - AdCenterWrapper::ArrayOfDayTargetBid
#   #   targetAllDays - SOAP::SOAPBoolean
#   class DayTarget
#     attr_accessor :bids
#     attr_accessor :targetAllDays
# 
#     def initialize(bids = nil, targetAllDays = nil)
#       @bids = bids
#       @targetAllDays = targetAllDays
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfDayTargetBid
#   class ArrayOfDayTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DayTargetBid
#   #   day - AdCenterWrapper::Day
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class DayTargetBid
#     attr_accessor :day
#     attr_accessor :incrementalBid
# 
#     def initialize(day = nil, incrementalBid = nil)
#       @day = day
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeviceTarget
#   #   devices - AdCenterWrapper::ArrayOfDeviceType
#   class DeviceTarget
#     attr_accessor :devices
# 
#     def initialize(devices = nil)
#       @devices = devices
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfDeviceType
#   class ArrayOfDeviceType < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GenderTarget
#   #   bids - AdCenterWrapper::ArrayOfGenderTargetBid
#   class GenderTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfGenderTargetBid
#   class ArrayOfGenderTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GenderTargetBid
#   #   gender - AdCenterWrapper::GenderType
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class GenderTargetBid
#     attr_accessor :gender
#     attr_accessor :incrementalBid
# 
#     def initialize(gender = nil, incrementalBid = nil)
#       @gender = gender
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}HourTarget
#   #   bids - AdCenterWrapper::ArrayOfHourTargetBid
#   #   targetAllHours - SOAP::SOAPBoolean
#   class HourTarget
#     attr_accessor :bids
#     attr_accessor :targetAllHours
# 
#     def initialize(bids = nil, targetAllHours = nil)
#       @bids = bids
#       @targetAllHours = targetAllHours
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfHourTargetBid
#   class ArrayOfHourTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}HourTargetBid
#   #   hour - AdCenterWrapper::HourRange
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class HourTargetBid
#     attr_accessor :hour
#     attr_accessor :incrementalBid
# 
#     def initialize(hour = nil, incrementalBid = nil)
#       @hour = hour
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}LocationTarget
#   #   businessTarget - AdCenterWrapper::BusinessTarget
#   #   cityTarget - AdCenterWrapper::CityTarget
#   #   countryTarget - AdCenterWrapper::CountryTarget
#   #   metroAreaTarget - AdCenterWrapper::MetroAreaTarget
#   #   radiusTarget - AdCenterWrapper::RadiusTarget
#   #   stateTarget - AdCenterWrapper::StateTarget
#   #   targetAllLocations - SOAP::SOAPBoolean
#   class LocationTarget
#     attr_accessor :businessTarget
#     attr_accessor :cityTarget
#     attr_accessor :countryTarget
#     attr_accessor :metroAreaTarget
#     attr_accessor :radiusTarget
#     attr_accessor :stateTarget
#     attr_accessor :targetAllLocations
# 
#     def initialize(businessTarget = nil, cityTarget = nil, countryTarget = nil, metroAreaTarget = nil, radiusTarget = nil, stateTarget = nil, targetAllLocations = nil)
#       @businessTarget = businessTarget
#       @cityTarget = cityTarget
#       @countryTarget = countryTarget
#       @metroAreaTarget = metroAreaTarget
#       @radiusTarget = radiusTarget
#       @stateTarget = stateTarget
#       @targetAllLocations = targetAllLocations
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessTarget
#   #   bids - AdCenterWrapper::ArrayOfBusinessTargetBid
#   class BusinessTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBusinessTargetBid
#   class ArrayOfBusinessTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessTargetBid
#   #   businessId - SOAP::SOAPLong
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   #   radius - SOAP::SOAPInt
#   class BusinessTargetBid
#     attr_accessor :businessId
#     attr_accessor :incrementalBid
#     attr_accessor :radius
# 
#     def initialize(businessId = nil, incrementalBid = nil, radius = nil)
#       @businessId = businessId
#       @incrementalBid = incrementalBid
#       @radius = radius
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CityTarget
#   #   bids - AdCenterWrapper::ArrayOfCityTargetBid
#   class CityTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCityTargetBid
#   class ArrayOfCityTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CityTargetBid
#   #   city - SOAP::SOAPString
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class CityTargetBid
#     attr_accessor :city
#     attr_accessor :incrementalBid
# 
#     def initialize(city = nil, incrementalBid = nil)
#       @city = city
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CountryTarget
#   #   bids - AdCenterWrapper::ArrayOfCountryTargetBid
#   class CountryTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCountryTargetBid
#   class ArrayOfCountryTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CountryTargetBid
#   #   countryAndRegion - SOAP::SOAPString
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   class CountryTargetBid
#     attr_accessor :countryAndRegion
#     attr_accessor :incrementalBid
# 
#     def initialize(countryAndRegion = nil, incrementalBid = nil)
#       @countryAndRegion = countryAndRegion
#       @incrementalBid = incrementalBid
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MetroAreaTarget
#   #   bids - AdCenterWrapper::ArrayOfMetroAreaTargetBid
#   class MetroAreaTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfMetroAreaTargetBid
#   class ArrayOfMetroAreaTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MetroAreaTargetBid
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   #   metroArea - SOAP::SOAPString
#   class MetroAreaTargetBid
#     attr_accessor :incrementalBid
#     attr_accessor :metroArea
# 
#     def initialize(incrementalBid = nil, metroArea = nil)
#       @incrementalBid = incrementalBid
#       @metroArea = metroArea
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}RadiusTarget
#   #   bids - AdCenterWrapper::ArrayOfRadiusTargetBid
#   class RadiusTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfRadiusTargetBid
#   class ArrayOfRadiusTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}RadiusTargetBid
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   #   latitudeDegrees - SOAP::SOAPDouble
#   #   longitudeDegrees - SOAP::SOAPDouble
#   #   radius - SOAP::SOAPInt
#   class RadiusTargetBid
#     attr_accessor :incrementalBid
#     attr_accessor :latitudeDegrees
#     attr_accessor :longitudeDegrees
#     attr_accessor :radius
# 
#     def initialize(incrementalBid = nil, latitudeDegrees = nil, longitudeDegrees = nil, radius = nil)
#       @incrementalBid = incrementalBid
#       @latitudeDegrees = latitudeDegrees
#       @longitudeDegrees = longitudeDegrees
#       @radius = radius
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}StateTarget
#   #   bids - AdCenterWrapper::ArrayOfStateTargetBid
#   class StateTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfStateTargetBid
#   class ArrayOfStateTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}StateTargetBid
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   #   state - SOAP::SOAPString
#   class StateTargetBid
#     attr_accessor :incrementalBid
#     attr_accessor :state
# 
#     def initialize(incrementalBid = nil, state = nil)
#       @incrementalBid = incrementalBid
#       @state = state
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SegmentTarget
#   #   bids - AdCenterWrapper::ArrayOfSegmentTargetBid
#   class SegmentTarget
#     attr_accessor :bids
# 
#     def initialize(bids = nil)
#       @bids = bids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSegmentTargetBid
#   class ArrayOfSegmentTargetBid < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SegmentTargetBid
#   #   cashBackInfo - AdCenterWrapper::CashBackInfo
#   #   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   #   param1 - SOAP::SOAPString
#   #   param2 - SOAP::SOAPString
#   #   param3 - SOAP::SOAPString
#   #   segmentId - SOAP::SOAPLong
#   #   segmentParam1 - SOAP::SOAPString
#   #   segmentParam2 - SOAP::SOAPString
#   class SegmentTargetBid
#     attr_accessor :cashBackInfo
#     attr_accessor :incrementalBid
#     attr_accessor :param1
#     attr_accessor :param2
#     attr_accessor :param3
#     attr_accessor :segmentId
#     attr_accessor :segmentParam1
#     attr_accessor :segmentParam2
# 
#     def initialize(cashBackInfo = nil, incrementalBid = nil, param1 = nil, param2 = nil, param3 = nil, segmentId = nil, segmentParam1 = nil, segmentParam2 = nil)
#       @cashBackInfo = cashBackInfo
#       @incrementalBid = incrementalBid
#       @param1 = param1
#       @param2 = param2
#       @param3 = param3
#       @segmentId = segmentId
#       @segmentParam1 = segmentParam1
#       @segmentParam2 = segmentParam2
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfTarget
#   class ArrayOfTarget < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfTargetInfo
#   class ArrayOfTargetInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TargetInfo
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   class TargetInfo
#     attr_accessor :id
#     attr_accessor :name
# 
#     def initialize(id = nil, name = nil)
#       @id = id
#       @name = name
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class ApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :batchErrors
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, batchErrors = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @batchErrors = batchErrors
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   #   editorialErrors - AdCenterWrapper::ArrayOfEditorialError
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class EditorialApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :batchErrors
#     attr_accessor :editorialErrors
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, batchErrors = nil, editorialErrors = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @batchErrors = batchErrors
#       @editorialErrors = editorialErrors
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
#   class ArrayOflong < ::Array
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfbase64Binary
#   class ArrayOfbase64Binary < ::Array
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
#   class ArrayOfstring < ::Array
#   end
# 
#   # {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfAdGroupNetwork
#   class ArrayOfAdGroupNetwork < ::Array
#   end
# 
#   # {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AdGroupNetwork
#   #   adGroupId - SOAP::SOAPLong
#   #   network - AdCenterWrapper::Network
#   class AdGroupNetwork
#     attr_accessor :adGroupId
#     attr_accessor :network
# 
#     def initialize(adGroupId = nil, network = nil)
#       @adGroupId = adGroupId
#       @network = network
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdEditorialStatus
#   class AdEditorialStatus < ::String
#     Active = AdEditorialStatus.new("Active")
#     Disapproved = AdEditorialStatus.new("Disapproved")
#     Inactive = AdEditorialStatus.new("Inactive")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdStatus
#   class AdStatus < ::String
#     Active = AdStatus.new("Active")
#     Deleted = AdStatus.new("Deleted")
#     Inactive = AdStatus.new("Inactive")
#     Paused = AdStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdType
#   class AdType < ::String
#     Image = AdType.new("Image")
#     Mobile = AdType.new("Mobile")
#     RichSearch = AdType.new("RichSearch")
#     Text = AdType.new("Text")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralBidStatus
#   class BehavioralBidStatus < ::String
#     Active = BehavioralBidStatus.new("Active")
#     Deleted = BehavioralBidStatus.new("Deleted")
#     Inactive = BehavioralBidStatus.new("Inactive")
#     Paused = BehavioralBidStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Language
#   class Language < ::String
#     English = Language.new("English")
#     French = Language.new("French")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Network
#   class Network < ::String
#     OwnedAndOperatedAndSyndicatedSearch = Network.new("OwnedAndOperatedAndSyndicatedSearch")
#     OwnedAndOperatedOnly = Network.new("OwnedAndOperatedOnly")
#     SyndicatedSearchOnly = Network.new("SyndicatedSearchOnly")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CashBackStatus
#   class CashBackStatus < ::String
#     Disable = CashBackStatus.new("Disable")
#     Enable = CashBackStatus.new("Enable")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordEditorialStatus
#   class KeywordEditorialStatus < ::String
#     Active = KeywordEditorialStatus.new("Active")
#     Disapproved = KeywordEditorialStatus.new("Disapproved")
#     Inactive = KeywordEditorialStatus.new("Inactive")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}OverridePriority
#   class OverridePriority < ::String
#     KeywordEnable = OverridePriority.new("KeywordEnable")
#     KeywordPriority = OverridePriority.new("KeywordPriority")
#     SegmentEnable = OverridePriority.new("SegmentEnable")
#     SegmentPriority = OverridePriority.new("SegmentPriority")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordStatus
#   class KeywordStatus < ::String
#     Active = KeywordStatus.new("Active")
#     Deleted = KeywordStatus.new("Deleted")
#     Inactive = KeywordStatus.new("Inactive")
#     Paused = KeywordStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PricingModel
#   class PricingModel < ::String
#     Cpc = PricingModel.new("Cpc")
#     Cpm = PricingModel.new("Cpm")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}StandardBusinessIcon
#   class StandardBusinessIcon < ::String
#     Accommodations = StandardBusinessIcon.new("Accommodations")
#     BankOrFinanceOrCurrencyExchange = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchange")
#     BankOrFinanceOrCurrencyExchangeEUR = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchangeEUR")
#     BankOrFinanceOrCurrencyExchangeUK = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchangeUK")
#     CafeOrCoffeeShop = StandardBusinessIcon.new("CafeOrCoffeeShop")
#     CarDealerOrServiceOrRental = StandardBusinessIcon.new("CarDealerOrServiceOrRental")
#     FlowersOrGarden = StandardBusinessIcon.new("FlowersOrGarden")
#     GroceryOrDepartmentStore = StandardBusinessIcon.new("GroceryOrDepartmentStore")
#     HairdresserOrBarberOrTailor = StandardBusinessIcon.new("HairdresserOrBarberOrTailor")
#     HardwareOrRepair = StandardBusinessIcon.new("HardwareOrRepair")
#     HousewaresOrRealEstateOrHomeRepair = StandardBusinessIcon.new("HousewaresOrRealEstateOrHomeRepair")
#     MoviesOrVideo = StandardBusinessIcon.new("MoviesOrVideo")
#     PhonesOrServiceProvider = StandardBusinessIcon.new("PhonesOrServiceProvider")
#     PubOrBarOrLiquor = StandardBusinessIcon.new("PubOrBarOrLiquor")
#     RestaurantOrDining = StandardBusinessIcon.new("RestaurantOrDining")
#     ShoppingOrBoutique = StandardBusinessIcon.new("ShoppingOrBoutique")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessGeoCodeStatus
#   class BusinessGeoCodeStatus < ::String
#     Complete = BusinessGeoCodeStatus.new("Complete")
#     Failed = BusinessGeoCodeStatus.new("Failed")
#     Invalid = BusinessGeoCodeStatus.new("Invalid")
#     Pending = BusinessGeoCodeStatus.new("Pending")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Day
#   class Day < ::String
#     Friday = Day.new("Friday")
#     Monday = Day.new("Monday")
#     Saturday = Day.new("Saturday")
#     Sunday = Day.new("Sunday")
#     Thursday = Day.new("Thursday")
#     Tuesday = Day.new("Tuesday")
#     Wednesday = Day.new("Wednesday")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PaymentType
#   class PaymentType < ::String
#     AmericanExpress = PaymentType.new("AmericanExpress")
#     Cash = PaymentType.new("Cash")
#     CashOnDelivery = PaymentType.new("CashOnDelivery")
#     DinersClub = PaymentType.new("DinersClub")
#     DirectDebit = PaymentType.new("DirectDebit")
#     Invoice = PaymentType.new("Invoice")
#     MasterCard = PaymentType.new("MasterCard")
#     Other = PaymentType.new("Other")
#     PayPal = PaymentType.new("PayPal")
#     TravellersCheck = PaymentType.new("TravellersCheck")
#     Visa = PaymentType.new("Visa")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BusinessStatus
#   class BusinessStatus < ::String
#     Active = BusinessStatus.new("Active")
#     Inactive = BusinessStatus.new("Inactive")
#     Pending = BusinessStatus.new("Pending")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SitePlacementStatus
#   class SitePlacementStatus < ::String
#     Active = SitePlacementStatus.new("Active")
#     Deleted = SitePlacementStatus.new("Deleted")
#     Inactive = SitePlacementStatus.new("Inactive")
#     Paused = SitePlacementStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BudgetLimitType
#   class BudgetLimitType < ::String
#     DailyBudgetWithMaximumMonthlySpend = BudgetLimitType.new("DailyBudgetWithMaximumMonthlySpend")
#     MonthlyBudgetDivideDailyAcrossMonth = BudgetLimitType.new("MonthlyBudgetDivideDailyAcrossMonth")
#     MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignStatus
#   class CampaignStatus < ::String
#     Active = CampaignStatus.new("Active")
#     BudgetAndManualPaused = CampaignStatus.new("BudgetAndManualPaused")
#     BudgetPaused = CampaignStatus.new("BudgetPaused")
#     Deleted = CampaignStatus.new("Deleted")
#     Paused = CampaignStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdDistribution
#   #   contains list of AdDistribution::*
#   class AdDistribution < ::Array
#     Content = "Content"
#     Search = "Search"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BiddingModel
#   class BiddingModel < ::String
#     BehavioralBid = BiddingModel.new("BehavioralBid")
#     Keyword = BiddingModel.new("Keyword")
#     SitePlacement = BiddingModel.new("SitePlacement")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupStatus
#   class AdGroupStatus < ::String
#     Active = AdGroupStatus.new("Active")
#     Deleted = AdGroupStatus.new("Deleted")
#     Draft = AdGroupStatus.new("Draft")
#     Paused = AdGroupStatus.new("Paused")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeRange
#   class AgeRange < ::String
#     EighteenToTwentyFive = AgeRange.new("EighteenToTwentyFive")
#     FiftyToSixtyFive = AgeRange.new("FiftyToSixtyFive")
#     SixtyFiveAndAbove = AgeRange.new("SixtyFiveAndAbove")
#     ThirtyFiveToFifty = AgeRange.new("ThirtyFiveToFifty")
#     TwentyFiveToThirtyFive = AgeRange.new("TwentyFiveToThirtyFive")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}IncrementalBidPercentage
#   class IncrementalBidPercentage < ::String
#     EightyPercent = IncrementalBidPercentage.new("EightyPercent")
#     FiftyPercent = IncrementalBidPercentage.new("FiftyPercent")
#     FortyPercent = IncrementalBidPercentage.new("FortyPercent")
#     NegativeEightyPercent = IncrementalBidPercentage.new("NegativeEightyPercent")
#     NegativeFiftyPercent = IncrementalBidPercentage.new("NegativeFiftyPercent")
#     NegativeFortyPercent = IncrementalBidPercentage.new("NegativeFortyPercent")
#     NegativeNinetyPercent = IncrementalBidPercentage.new("NegativeNinetyPercent")
#     NegativeOneHundredPercent = IncrementalBidPercentage.new("NegativeOneHundredPercent")
#     NegativeSeventyPercent = IncrementalBidPercentage.new("NegativeSeventyPercent")
#     NegativeSixtyPercent = IncrementalBidPercentage.new("NegativeSixtyPercent")
#     NegativeTenPercent = IncrementalBidPercentage.new("NegativeTenPercent")
#     NegativeThirtyPercent = IncrementalBidPercentage.new("NegativeThirtyPercent")
#     NegativeTwentyPercent = IncrementalBidPercentage.new("NegativeTwentyPercent")
#     NinetyPercent = IncrementalBidPercentage.new("NinetyPercent")
#     OneHundredPercent = IncrementalBidPercentage.new("OneHundredPercent")
#     SeventyPercent = IncrementalBidPercentage.new("SeventyPercent")
#     SixtyPercent = IncrementalBidPercentage.new("SixtyPercent")
#     TenPercent = IncrementalBidPercentage.new("TenPercent")
#     ThirtyPercent = IncrementalBidPercentage.new("ThirtyPercent")
#     TwentyPercent = IncrementalBidPercentage.new("TwentyPercent")
#     ZeroPercent = IncrementalBidPercentage.new("ZeroPercent")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeviceType
#   class DeviceType < ::String
#     Computers = DeviceType.new("Computers")
#     Smartphones = DeviceType.new("Smartphones")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GenderType
#   class GenderType < ::String
#     Female = GenderType.new("Female")
#     Male = GenderType.new("Male")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}HourRange
#   class HourRange < ::String
#     ElevenAMToTwoPM = HourRange.new("ElevenAMToTwoPM")
#     ElevenPMToThreeAM = HourRange.new("ElevenPMToThreeAM")
#     SevenAMToElevenAM = HourRange.new("SevenAMToElevenAM")
#     SixPMToElevenPM = HourRange.new("SixPMToElevenPM")
#     ThreeAMToSevenAM = HourRange.new("ThreeAMToSevenAM")
#     TwoPMToSixPM = HourRange.new("TwoPMToSixPM")
#   end
# 
#   # {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AdComponent
#   class AdComponent < ::String
#     Ad = AdComponent.new("Ad")
#     AdDescription = AdComponent.new("AdDescription")
#     AdTitle = AdComponent.new("AdTitle")
#     AdTitleDescription = AdComponent.new("AdTitleDescription")
#     AltText = AdComponent.new("AltText")
#     Asset = AdComponent.new("Asset")
#     Association = AdComponent.new("Association")
#     Audio = AdComponent.new("Audio")
#     BiddingKeyword = AdComponent.new("BiddingKeyword")
#     BusinessName = AdComponent.new("BusinessName")
#     CAsset = AdComponent.new("CAsset")
#     CashbackTextParam = AdComponent.new("CashbackTextParam")
#     Destination = AdComponent.new("Destination")
#     DestinationUrl = AdComponent.new("DestinationUrl")
#     DisplayUrl = AdComponent.new("DisplayUrl")
#     Flash = AdComponent.new("Flash")
#     Image = AdComponent.new("Image")
#     Keyword = AdComponent.new("Keyword")
#     KeywordParam1 = AdComponent.new("KeywordParam1")
#     KeywordParam2 = AdComponent.new("KeywordParam2")
#     KeywordParam3 = AdComponent.new("KeywordParam3")
#     LandingUrl = AdComponent.new("LandingUrl")
#     Order = AdComponent.new("Order")
#     PhoneNumber = AdComponent.new("PhoneNumber")
#     Script = AdComponent.new("Script")
#     SiteDomain = AdComponent.new("SiteDomain")
#     Unknown = AdComponent.new("Unknown")
#     Video = AdComponent.new("Video")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBids - AdCenterWrapper::ArrayOfBehavioralBid
#   class UpdateBehavioralBidsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBids
# 
#     def initialize(adGroupId = nil, behavioralBids = nil)
#       @adGroupId = adGroupId
#       @behavioralBids = behavioralBids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsResponse
#   class UpdateBehavioralBidsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCustomSegmentsRequest
#   class GetCustomSegmentsRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCustomSegmentsResponse
#   #   customSegments - AdCenterWrapper::ArrayOfSegment
#   class GetCustomSegmentsResponse
#     attr_accessor :customSegments
# 
#     def initialize(customSegments = nil)
#       @customSegments = customSegments
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddSegmentsRequest
#   #   segments - AdCenterWrapper::ArrayOfSegment
#   class AddSegmentsRequest
#     attr_accessor :segments
# 
#     def initialize(segments = nil)
#       @segments = segments
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddSegmentsResponse
#   #   segmentIds - AdCenterWrapper::ArrayOflong
#   class AddSegmentsResponse
#     attr_accessor :segmentIds
# 
#     def initialize(segmentIds = nil)
#       @segmentIds = segmentIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteSegmentsRequest
#   #   segmentIds - AdCenterWrapper::ArrayOflong
#   class DeleteSegmentsRequest
#     attr_accessor :segmentIds
# 
#     def initialize(segmentIds = nil)
#       @segmentIds = segmentIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteSegmentsResponse
#   class DeleteSegmentsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSegmentsByIdsRequest
#   #   segmentIds - AdCenterWrapper::ArrayOflong
#   class GetSegmentsByIdsRequest
#     attr_accessor :segmentIds
# 
#     def initialize(segmentIds = nil)
#       @segmentIds = segmentIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSegmentsByIdsResponse
#   #   segments - AdCenterWrapper::ArrayOfSegment
#   class GetSegmentsByIdsResponse
#     attr_accessor :segments
# 
#     def initialize(segments = nil)
#       @segments = segments
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSegmentsRequest
#   class GetSegmentsRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSegmentsResponse
#   #   segments - AdCenterWrapper::ArrayOfSegment
#   class GetSegmentsResponse
#     attr_accessor :segments
# 
#     def initialize(segments = nil)
#       @segments = segments
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetUsersToSegmentsRequest
#   #   segmentId - SOAP::SOAPLong
#   #   userHash - AdCenterWrapper::ArrayOfbase64Binary
#   class SetUsersToSegmentsRequest
#     attr_accessor :segmentId
#     attr_accessor :userHash
# 
#     def initialize(segmentId = nil, userHash = nil)
#       @segmentId = segmentId
#       @userHash = userHash
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetUsersToSegmentsResponse
#   class SetUsersToSegmentsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentRequest
#   #   userHash - AdCenterWrapper::ArrayOfbase64Binary
#   class DeleteUsersFromSegmentRequest
#     attr_accessor :userHash
# 
#     def initialize(userHash = nil)
#       @userHash = userHash
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentResponse
#   class DeleteUsersFromSegmentResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNormalizedStringsRequest
#   #   strings - AdCenterWrapper::ArrayOfstring
#   #   language - AdCenterWrapper::Language
#   class GetNormalizedStringsRequest
#     attr_accessor :strings
#     attr_accessor :language
# 
#     def initialize(strings = nil, language = nil)
#       @strings = strings
#       @language = language
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNormalizedStringsResponse
#   #   normalizedStrings - AdCenterWrapper::ArrayOfstring
#   class GetNormalizedStringsResponse
#     attr_accessor :normalizedStrings
# 
#     def initialize(normalizedStrings = nil)
#       @normalizedStrings = normalizedStrings
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsRequest
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   #   accountId - SOAP::SOAPLong
#   class GetKeywordEditorialReasonsByIdsRequest
#     attr_accessor :keywordIds
#     attr_accessor :accountId
# 
#     def initialize(keywordIds = nil, accountId = nil)
#       @keywordIds = keywordIds
#       @accountId = accountId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsResponse
#   #   editorialReasons - AdCenterWrapper::ArrayOfEditorialReasonCollection
#   class GetKeywordEditorialReasonsByIdsResponse
#     attr_accessor :editorialReasons
# 
#     def initialize(editorialReasons = nil)
#       @editorialReasons = editorialReasons
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsRequest
#   #   adIds - AdCenterWrapper::ArrayOflong
#   #   accountId - SOAP::SOAPLong
#   class GetAdEditorialReasonsByIdsRequest
#     attr_accessor :adIds
#     attr_accessor :accountId
# 
#     def initialize(adIds = nil, accountId = nil)
#       @adIds = adIds
#       @accountId = accountId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsResponse
#   #   editorialReasons - AdCenterWrapper::ArrayOfEditorialReasonCollection
#   class GetAdEditorialReasonsByIdsResponse
#     attr_accessor :editorialReasons
# 
#     def initialize(editorialReasons = nil)
#       @editorialReasons = editorialReasons
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class GetNetworksByAdGroupIdsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsResponse
#   #   adGroupNetworks - AdCenterWrapper::ArrayOfAdGroupNetwork
#   class GetNetworksByAdGroupIdsResponse
#     attr_accessor :adGroupNetworks
# 
#     def initialize(adGroupNetworks = nil)
#       @adGroupNetworks = adGroupNetworks
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupNetworks - AdCenterWrapper::ArrayOfAdGroupNetwork
#   class SetNetworksToAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupNetworks
# 
#     def initialize(campaignId = nil, adGroupNetworks = nil)
#       @campaignId = campaignId
#       @adGroupNetworks = adGroupNetworks
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsResponse
#   class SetNetworksToAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddAdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   ads - AdCenterWrapper::ArrayOfAd
#   class AddAdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :ads
# 
#     def initialize(adGroupId = nil, ads = nil)
#       @adGroupId = adGroupId
#       @ads = ads
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddAdsResponse
#   #   adIds - AdCenterWrapper::ArrayOflong
#   class AddAdsResponse
#     attr_accessor :adIds
# 
#     def initialize(adIds = nil)
#       @adIds = adIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteAdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   adIds - AdCenterWrapper::ArrayOflong
#   class DeleteAdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :adIds
# 
#     def initialize(adGroupId = nil, adIds = nil)
#       @adGroupId = adGroupId
#       @adIds = adIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteAdsResponse
#   class DeleteAdsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   class GetAdsByEditorialStatusRequest
#     attr_accessor :adGroupId
#     attr_accessor :editorialStatus
# 
#     def initialize(adGroupId = nil, editorialStatus = nil)
#       @adGroupId = adGroupId
#       @editorialStatus = editorialStatus
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusResponse
#   #   ads - AdCenterWrapper::ArrayOfAd
#   class GetAdsByEditorialStatusResponse
#     attr_accessor :ads
# 
#     def initialize(ads = nil)
#       @ads = ads
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByIdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   adIds - AdCenterWrapper::ArrayOflong
#   class GetAdsByIdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :adIds
# 
#     def initialize(adGroupId = nil, adIds = nil)
#       @adGroupId = adGroupId
#       @adIds = adIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByIdsResponse
#   #   ads - AdCenterWrapper::ArrayOfAd
#   class GetAdsByIdsResponse
#     attr_accessor :ads
# 
#     def initialize(ads = nil)
#       @ads = ads
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdRequest
#   #   adGroupId - SOAP::SOAPLong
#   class GetAdsByAdGroupIdRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdResponse
#   #   ads - AdCenterWrapper::ArrayOfAd
#   class GetAdsByAdGroupIdResponse
#     attr_accessor :ads
# 
#     def initialize(ads = nil)
#       @ads = ads
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateAdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   ads - AdCenterWrapper::ArrayOfAd
#   class UpdateAdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :ads
# 
#     def initialize(adGroupId = nil, ads = nil)
#       @adGroupId = adGroupId
#       @ads = ads
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateAdsResponse
#   class UpdateAdsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseAdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   adIds - AdCenterWrapper::ArrayOflong
#   class PauseAdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :adIds
# 
#     def initialize(adGroupId = nil, adIds = nil)
#       @adGroupId = adGroupId
#       @adIds = adIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseAdsResponse
#   class PauseAdsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeAdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   adIds - AdCenterWrapper::ArrayOflong
#   class ResumeAdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :adIds
# 
#     def initialize(adGroupId = nil, adIds = nil)
#       @adGroupId = adGroupId
#       @adIds = adIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeAdsResponse
#   class ResumeAdsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddKeywordsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywords - AdCenterWrapper::ArrayOfKeyword
#   class AddKeywordsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywords
# 
#     def initialize(adGroupId = nil, keywords = nil)
#       @adGroupId = adGroupId
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddKeywordsResponse
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   class AddKeywordsResponse
#     attr_accessor :keywordIds
# 
#     def initialize(keywordIds = nil)
#       @keywordIds = keywordIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteKeywordsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   class DeleteKeywordsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywordIds
# 
#     def initialize(adGroupId = nil, keywordIds = nil)
#       @adGroupId = adGroupId
#       @keywordIds = keywordIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteKeywordsResponse
#   class DeleteKeywordsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   editorialStatus - AdCenterWrapper::KeywordEditorialStatus
#   class GetKeywordsByEditorialStatusRequest
#     attr_accessor :adGroupId
#     attr_accessor :editorialStatus
# 
#     def initialize(adGroupId = nil, editorialStatus = nil)
#       @adGroupId = adGroupId
#       @editorialStatus = editorialStatus
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusResponse
#   #   keywords - AdCenterWrapper::ArrayOfKeyword
#   class GetKeywordsByEditorialStatusResponse
#     attr_accessor :keywords
# 
#     def initialize(keywords = nil)
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByIdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   class GetKeywordsByIdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywordIds
# 
#     def initialize(adGroupId = nil, keywordIds = nil)
#       @adGroupId = adGroupId
#       @keywordIds = keywordIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByIdsResponse
#   #   keywords - AdCenterWrapper::ArrayOfKeyword
#   class GetKeywordsByIdsResponse
#     attr_accessor :keywords
# 
#     def initialize(keywords = nil)
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdRequest
#   #   adGroupId - SOAP::SOAPLong
#   class GetKeywordsByAdGroupIdRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdResponse
#   #   keywords - AdCenterWrapper::ArrayOfKeyword
#   class GetKeywordsByAdGroupIdResponse
#     attr_accessor :keywords
# 
#     def initialize(keywords = nil)
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseKeywordsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   class PauseKeywordsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywordIds
# 
#     def initialize(adGroupId = nil, keywordIds = nil)
#       @adGroupId = adGroupId
#       @keywordIds = keywordIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseKeywordsResponse
#   class PauseKeywordsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeKeywordsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywordIds - AdCenterWrapper::ArrayOflong
#   class ResumeKeywordsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywordIds
# 
#     def initialize(adGroupId = nil, keywordIds = nil)
#       @adGroupId = adGroupId
#       @keywordIds = keywordIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeKeywordsResponse
#   class ResumeKeywordsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateKeywordsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   keywords - AdCenterWrapper::ArrayOfKeyword
#   class UpdateKeywordsRequest
#     attr_accessor :adGroupId
#     attr_accessor :keywords
# 
#     def initialize(adGroupId = nil, keywords = nil)
#       @adGroupId = adGroupId
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateKeywordsResponse
#   class UpdateKeywordsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsRequest
#   #   accountId - SOAP::SOAPLong
#   #   languageAndRegion - SOAP::SOAPString
#   #   currency - SOAP::SOAPString
#   #   keywordBids - AdCenterWrapper::ArrayOfKeywordBid
#   #   pricingModel - AdCenterWrapper::PricingModel
#   class GetKeywordEstimatesByBidsRequest
#     attr_accessor :accountId
#     attr_accessor :languageAndRegion
#     attr_accessor :currency
#     attr_accessor :keywordBids
#     attr_accessor :pricingModel
# 
#     def initialize(accountId = nil, languageAndRegion = nil, currency = nil, keywordBids = nil, pricingModel = nil)
#       @accountId = accountId
#       @languageAndRegion = languageAndRegion
#       @currency = currency
#       @keywordBids = keywordBids
#       @pricingModel = pricingModel
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsResponse
#   #   keywordEstimates - AdCenterWrapper::ArrayOfKeywordEstimate
#   class GetKeywordEstimatesByBidsResponse
#     attr_accessor :keywordEstimates
# 
#     def initialize(keywordEstimates = nil)
#       @keywordEstimates = keywordEstimates
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddBusinessesRequest
#   #   businesses - AdCenterWrapper::ArrayOfBusiness
#   class AddBusinessesRequest
#     attr_accessor :businesses
# 
#     def initialize(businesses = nil)
#       @businesses = businesses
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddBusinessesResponse
#   #   businessIds - AdCenterWrapper::ArrayOflong
#   class AddBusinessesResponse
#     attr_accessor :businessIds
# 
#     def initialize(businessIds = nil)
#       @businessIds = businessIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateBusinessesRequest
#   #   businesses - AdCenterWrapper::ArrayOfBusiness
#   class UpdateBusinessesRequest
#     attr_accessor :businesses
# 
#     def initialize(businesses = nil)
#       @businesses = businesses
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateBusinessesResponse
#   class UpdateBusinessesResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteBusinessesRequest
#   #   businessIds - AdCenterWrapper::ArrayOflong
#   class DeleteBusinessesRequest
#     attr_accessor :businessIds
# 
#     def initialize(businessIds = nil)
#       @businessIds = businessIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteBusinessesResponse
#   class DeleteBusinessesResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBusinessesInfoRequest
#   class GetBusinessesInfoRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBusinessesInfoResponse
#   #   businessesInfo - AdCenterWrapper::ArrayOfBusinessInfo
#   class GetBusinessesInfoResponse
#     attr_accessor :businessesInfo
# 
#     def initialize(businessesInfo = nil)
#       @businessesInfo = businessesInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBusinessesByIdsRequest
#   #   businessIds - AdCenterWrapper::ArrayOflong
#   class GetBusinessesByIdsRequest
#     attr_accessor :businessIds
# 
#     def initialize(businessIds = nil)
#       @businessIds = businessIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBusinessesByIdsResponse
#   #   businesses - AdCenterWrapper::ArrayOfBusiness
#   class GetBusinessesByIdsResponse
#     attr_accessor :businesses
# 
#     def initialize(businesses = nil)
#       @businesses = businesses
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddSitePlacementsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
#   class AddSitePlacementsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacements
# 
#     def initialize(adGroupId = nil, sitePlacements = nil)
#       @adGroupId = adGroupId
#       @sitePlacements = sitePlacements
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddSitePlacementsResponse
#   #   sitePlacementIds - AdCenterWrapper::ArrayOflong
#   class AddSitePlacementsResponse
#     attr_accessor :sitePlacementIds
# 
#     def initialize(sitePlacementIds = nil)
#       @sitePlacementIds = sitePlacementIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteSitePlacementsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacementIds - AdCenterWrapper::ArrayOflong
#   class DeleteSitePlacementsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacementIds
# 
#     def initialize(adGroupId = nil, sitePlacementIds = nil)
#       @adGroupId = adGroupId
#       @sitePlacementIds = sitePlacementIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteSitePlacementsResponse
#   class DeleteSitePlacementsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacementIds - AdCenterWrapper::ArrayOflong
#   class GetSitePlacementsByIdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacementIds
# 
#     def initialize(adGroupId = nil, sitePlacementIds = nil)
#       @adGroupId = adGroupId
#       @sitePlacementIds = sitePlacementIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsResponse
#   #   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
#   class GetSitePlacementsByIdsResponse
#     attr_accessor :sitePlacements
# 
#     def initialize(sitePlacements = nil)
#       @sitePlacements = sitePlacements
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdRequest
#   #   adGroupId - SOAP::SOAPLong
#   class GetSitePlacementsByAdGroupIdRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdResponse
#   #   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
#   class GetSitePlacementsByAdGroupIdResponse
#     attr_accessor :sitePlacements
# 
#     def initialize(sitePlacements = nil)
#       @sitePlacements = sitePlacements
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseSitePlacementsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacementIds - AdCenterWrapper::ArrayOflong
#   class PauseSitePlacementsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacementIds
# 
#     def initialize(adGroupId = nil, sitePlacementIds = nil)
#       @adGroupId = adGroupId
#       @sitePlacementIds = sitePlacementIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseSitePlacementsResponse
#   class PauseSitePlacementsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeSitePlacementsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacementIds - AdCenterWrapper::ArrayOflong
#   class ResumeSitePlacementsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacementIds
# 
#     def initialize(adGroupId = nil, sitePlacementIds = nil)
#       @adGroupId = adGroupId
#       @sitePlacementIds = sitePlacementIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeSitePlacementsResponse
#   class ResumeSitePlacementsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateSitePlacementsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
#   class UpdateSitePlacementsRequest
#     attr_accessor :adGroupId
#     attr_accessor :sitePlacements
# 
#     def initialize(adGroupId = nil, sitePlacements = nil)
#       @adGroupId = adGroupId
#       @sitePlacements = sitePlacements
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateSitePlacementsResponse
#   class UpdateSitePlacementsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsRequest
#   #   urls - AdCenterWrapper::ArrayOfstring
#   class GetPlacementDetailsForUrlsRequest
#     attr_accessor :urls
# 
#     def initialize(urls = nil)
#       @urls = urls
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsResponse
#   #   placementDetails - AdCenterWrapper::ArrayOfArrayOfPlacementDetail
#   class GetPlacementDetailsForUrlsResponse
#     attr_accessor :placementDetails
# 
#     def initialize(placementDetails = nil)
#       @placementDetails = placementDetails
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddBehavioralBidsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBids - AdCenterWrapper::ArrayOfBehavioralBid
#   class AddBehavioralBidsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBids
# 
#     def initialize(adGroupId = nil, behavioralBids = nil)
#       @adGroupId = adGroupId
#       @behavioralBids = behavioralBids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddBehavioralBidsResponse
#   #   behavioralBidIds - AdCenterWrapper::ArrayOflong
#   class AddBehavioralBidsResponse
#     attr_accessor :behavioralBidIds
# 
#     def initialize(behavioralBidIds = nil)
#       @behavioralBidIds = behavioralBidIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBidIds - AdCenterWrapper::ArrayOflong
#   class DeleteBehavioralBidsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBidIds
# 
#     def initialize(adGroupId = nil, behavioralBidIds = nil)
#       @adGroupId = adGroupId
#       @behavioralBidIds = behavioralBidIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsResponse
#   class DeleteBehavioralBidsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBidIds - AdCenterWrapper::ArrayOflong
#   class GetBehavioralBidsByIdsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBidIds
# 
#     def initialize(adGroupId = nil, behavioralBidIds = nil)
#       @adGroupId = adGroupId
#       @behavioralBidIds = behavioralBidIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsResponse
#   #   behavioralBids - AdCenterWrapper::ArrayOfBehavioralBid
#   class GetBehavioralBidsByIdsResponse
#     attr_accessor :behavioralBids
# 
#     def initialize(behavioralBids = nil)
#       @behavioralBids = behavioralBids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdRequest
#   #   adGroupId - SOAP::SOAPLong
#   class GetBehavioralBidsByAdGroupIdRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdResponse
#   #   behavioralBids - AdCenterWrapper::ArrayOfBehavioralBid
#   class GetBehavioralBidsByAdGroupIdResponse
#     attr_accessor :behavioralBids
# 
#     def initialize(behavioralBids = nil)
#       @behavioralBids = behavioralBids
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseBehavioralBidsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBidIds - AdCenterWrapper::ArrayOflong
#   class PauseBehavioralBidsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBidIds
# 
#     def initialize(adGroupId = nil, behavioralBidIds = nil)
#       @adGroupId = adGroupId
#       @behavioralBidIds = behavioralBidIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseBehavioralBidsResponse
#   class PauseBehavioralBidsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   behavioralBidIds - AdCenterWrapper::ArrayOflong
#   class ResumeBehavioralBidsRequest
#     attr_accessor :adGroupId
#     attr_accessor :behavioralBidIds
# 
#     def initialize(adGroupId = nil, behavioralBidIds = nil)
#       @adGroupId = adGroupId
#       @behavioralBidIds = behavioralBidIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsResponse
#   class ResumeBehavioralBidsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaigns - AdCenterWrapper::ArrayOfCampaign
#   class AddCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaigns
# 
#     def initialize(accountId = nil, campaigns = nil)
#       @accountId = accountId
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddCampaignsResponse
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class AddCampaignsResponse
#     attr_accessor :campaignIds
# 
#     def initialize(campaignIds = nil)
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdRequest
#   #   accountId - SOAP::SOAPLong
#   class GetCampaignsByAccountIdRequest
#     attr_accessor :accountId
# 
#     def initialize(accountId = nil)
#       @accountId = accountId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdResponse
#   #   campaigns - AdCenterWrapper::ArrayOfCampaign
#   class GetCampaignsByAccountIdResponse
#     attr_accessor :campaigns
# 
#     def initialize(campaigns = nil)
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsByIdsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class GetCampaignsByIdsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignIds
# 
#     def initialize(accountId = nil, campaignIds = nil)
#       @accountId = accountId
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsByIdsResponse
#   #   campaigns - AdCenterWrapper::ArrayOfCampaign
#   class GetCampaignsByIdsResponse
#     attr_accessor :campaigns
# 
#     def initialize(campaigns = nil)
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class PauseCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignIds
# 
#     def initialize(accountId = nil, campaignIds = nil)
#       @accountId = accountId
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseCampaignsResponse
#   class PauseCampaignsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class ResumeCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignIds
# 
#     def initialize(accountId = nil, campaignIds = nil)
#       @accountId = accountId
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeCampaignsResponse
#   class ResumeCampaignsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class DeleteCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignIds
# 
#     def initialize(accountId = nil, campaignIds = nil)
#       @accountId = accountId
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteCampaignsResponse
#   class DeleteCampaignsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaigns - AdCenterWrapper::ArrayOfCampaign
#   class UpdateCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaigns
# 
#     def initialize(accountId = nil, campaigns = nil)
#       @accountId = accountId
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateCampaignsResponse
#   class UpdateCampaignsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdRequest
#   #   accountId - SOAP::SOAPLong
#   class GetCampaignsInfoByAccountIdRequest
#     attr_accessor :accountId
# 
#     def initialize(accountId = nil)
#       @accountId = accountId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdResponse
#   #   campaignsInfo - AdCenterWrapper::ArrayOfCampaignInfo
#   class GetCampaignsInfoByAccountIdResponse
#     attr_accessor :campaignsInfo
# 
#     def initialize(campaignsInfo = nil)
#       @campaignsInfo = campaignsInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class GetNegativeKeywordsByCampaignIdsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignIds
# 
#     def initialize(accountId = nil, campaignIds = nil)
#       @accountId = accountId
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsResponse
#   #   campaignNegativeKeywords - AdCenterWrapper::ArrayOfCampaignNegativeKeywords
#   class GetNegativeKeywordsByCampaignIdsResponse
#     attr_accessor :campaignNegativeKeywords
# 
#     def initialize(campaignNegativeKeywords = nil)
#       @campaignNegativeKeywords = campaignNegativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsRequest
#   #   accountId - SOAP::SOAPLong
#   #   campaignNegativeKeywords - AdCenterWrapper::ArrayOfCampaignNegativeKeywords
#   class SetNegativeKeywordsToCampaignsRequest
#     attr_accessor :accountId
#     attr_accessor :campaignNegativeKeywords
# 
#     def initialize(accountId = nil, campaignNegativeKeywords = nil)
#       @accountId = accountId
#       @campaignNegativeKeywords = campaignNegativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsResponse
#   class SetNegativeKeywordsToCampaignsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroups - AdCenterWrapper::ArrayOfAdGroup
#   class AddAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroups
# 
#     def initialize(campaignId = nil, adGroups = nil)
#       @campaignId = campaignId
#       @adGroups = adGroups
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddAdGroupsResponse
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class AddAdGroupsResponse
#     attr_accessor :adGroupIds
# 
#     def initialize(adGroupIds = nil)
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class DeleteAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteAdGroupsResponse
#   class DeleteAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class GetAdGroupsByIdsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsResponse
#   #   adGroups - AdCenterWrapper::ArrayOfAdGroup
#   class GetAdGroupsByIdsResponse
#     attr_accessor :adGroups
# 
#     def initialize(adGroups = nil)
#       @adGroups = adGroups
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdRequest
#   #   campaignId - SOAP::SOAPLong
#   class GetAdGroupsByCampaignIdRequest
#     attr_accessor :campaignId
# 
#     def initialize(campaignId = nil)
#       @campaignId = campaignId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdResponse
#   #   adGroups - AdCenterWrapper::ArrayOfAdGroup
#   class GetAdGroupsByCampaignIdResponse
#     attr_accessor :adGroups
# 
#     def initialize(adGroups = nil)
#       @adGroups = adGroups
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class PauseAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PauseAdGroupsResponse
#   class PauseAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class ResumeAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ResumeAdGroupsResponse
#   class ResumeAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalRequest
#   #   adGroupId - SOAP::SOAPLong
#   class SubmitAdGroupForApprovalRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalResponse
#   class SubmitAdGroupForApprovalResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroups - AdCenterWrapper::ArrayOfAdGroup
#   class UpdateAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroups
# 
#     def initialize(campaignId = nil, adGroups = nil)
#       @campaignId = campaignId
#       @adGroups = adGroups
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateAdGroupsResponse
#   class UpdateAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdRequest
#   #   campaignId - SOAP::SOAPLong
#   class GetAdGroupsInfoByCampaignIdRequest
#     attr_accessor :campaignId
# 
#     def initialize(campaignId = nil)
#       @campaignId = campaignId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdResponse
#   #   adGroupsInfo - AdCenterWrapper::ArrayOfAdGroupInfo
#   class GetAdGroupsInfoByCampaignIdResponse
#     attr_accessor :adGroupsInfo
# 
#     def initialize(adGroupsInfo = nil)
#       @adGroupsInfo = adGroupsInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class GetNegativeKeywordsByAdGroupIdsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupIds
# 
#     def initialize(campaignId = nil, adGroupIds = nil)
#       @campaignId = campaignId
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsResponse
#   #   adGroupNegativeKeywords - AdCenterWrapper::ArrayOfAdGroupNegativeKeywords
#   class GetNegativeKeywordsByAdGroupIdsResponse
#     attr_accessor :adGroupNegativeKeywords
# 
#     def initialize(adGroupNegativeKeywords = nil)
#       @adGroupNegativeKeywords = adGroupNegativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsRequest
#   #   campaignId - SOAP::SOAPLong
#   #   adGroupNegativeKeywords - AdCenterWrapper::ArrayOfAdGroupNegativeKeywords
#   class SetNegativeKeywordsToAdGroupsRequest
#     attr_accessor :campaignId
#     attr_accessor :adGroupNegativeKeywords
# 
#     def initialize(campaignId = nil, adGroupNegativeKeywords = nil)
#       @campaignId = campaignId
#       @adGroupNegativeKeywords = adGroupNegativeKeywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsResponse
#   class SetNegativeKeywordsToAdGroupsResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddTargetRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   target - AdCenterWrapper::Target
#   class AddTargetRequest
#     attr_accessor :adGroupId
#     attr_accessor :target
# 
#     def initialize(adGroupId = nil, target = nil)
#       @adGroupId = adGroupId
#       @target = target
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddTargetResponse
#   #   targetId - SOAP::SOAPLong
#   class AddTargetResponse
#     attr_accessor :targetId
# 
#     def initialize(targetId = nil)
#       @targetId = targetId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetRequest
#   #   adGroupId - SOAP::SOAPLong
#   class DeleteTargetRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetResponse
#   class DeleteTargetResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdRequest
#   #   adGroupId - SOAP::SOAPLong
#   class GetTargetByAdGroupIdRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdResponse
#   #   target - AdCenterWrapper::Target
#   class GetTargetByAdGroupIdResponse
#     attr_accessor :target
# 
#     def initialize(target = nil)
#       @target = target
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateTargetRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   target - AdCenterWrapper::Target
#   class UpdateTargetRequest
#     attr_accessor :adGroupId
#     attr_accessor :target
# 
#     def initialize(adGroupId = nil, target = nil)
#       @adGroupId = adGroupId
#       @target = target
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateTargetResponse
#   class UpdateTargetResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddTargetsToLibraryRequest
#   #   targets - AdCenterWrapper::ArrayOfTarget
#   class AddTargetsToLibraryRequest
#     attr_accessor :targets
# 
#     def initialize(targets = nil)
#       @targets = targets
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AddTargetsToLibraryResponse
#   #   targetIds - AdCenterWrapper::ArrayOflong
#   class AddTargetsToLibraryResponse
#     attr_accessor :targetIds
# 
#     def initialize(targetIds = nil)
#       @targetIds = targetIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryRequest
#   #   targets - AdCenterWrapper::ArrayOfTarget
#   class UpdateTargetsInLibraryRequest
#     attr_accessor :targets
# 
#     def initialize(targets = nil)
#       @targets = targets
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryResponse
#   class UpdateTargetsInLibraryResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryRequest
#   #   targetIds - AdCenterWrapper::ArrayOflong
#   class DeleteTargetsFromLibraryRequest
#     attr_accessor :targetIds
# 
#     def initialize(targetIds = nil)
#       @targetIds = targetIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryResponse
#   class DeleteTargetsFromLibraryResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryRequest
#   class GetTargetsInfoFromLibraryRequest
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryResponse
#   #   targetsInfo - AdCenterWrapper::ArrayOfTargetInfo
#   class GetTargetsInfoFromLibraryResponse
#     attr_accessor :targetsInfo
# 
#     def initialize(targetsInfo = nil)
#       @targetsInfo = targetsInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByIdsRequest
#   #   targetIds - AdCenterWrapper::ArrayOflong
#   class GetTargetsByIdsRequest
#     attr_accessor :targetIds
# 
#     def initialize(targetIds = nil)
#       @targetIds = targetIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByIdsResponse
#   #   targets - AdCenterWrapper::ArrayOfTarget
#   class GetTargetsByIdsResponse
#     attr_accessor :targets
# 
#     def initialize(targets = nil)
#       @targets = targets
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetTargetToAdGroupRequest
#   #   adGroupId - SOAP::SOAPLong
#   #   targetId - SOAP::SOAPLong
#   class SetTargetToAdGroupRequest
#     attr_accessor :adGroupId
#     attr_accessor :targetId
# 
#     def initialize(adGroupId = nil, targetId = nil)
#       @adGroupId = adGroupId
#       @targetId = targetId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetTargetToAdGroupResponse
#   class SetTargetToAdGroupResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupRequest
#   #   adGroupId - SOAP::SOAPLong
#   class DeleteTargetFromAdGroupRequest
#     attr_accessor :adGroupId
# 
#     def initialize(adGroupId = nil)
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupResponse
#   class DeleteTargetFromAdGroupResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsRequest
#   #   adGroupIds - AdCenterWrapper::ArrayOflong
#   class GetTargetsByAdGroupIdsRequest
#     attr_accessor :adGroupIds
# 
#     def initialize(adGroupIds = nil)
#       @adGroupIds = adGroupIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsResponse
#   #   targets - AdCenterWrapper::ArrayOfTarget
#   class GetTargetsByAdGroupIdsResponse
#     attr_accessor :targets
# 
#     def initialize(targets = nil)
#       @targets = targets
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetTargetToCampaignRequest
#   #   campaignId - SOAP::SOAPLong
#   #   targetId - SOAP::SOAPLong
#   class SetTargetToCampaignRequest
#     attr_accessor :campaignId
#     attr_accessor :targetId
# 
#     def initialize(campaignId = nil, targetId = nil)
#       @campaignId = campaignId
#       @targetId = targetId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SetTargetToCampaignResponse
#   class SetTargetToCampaignResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignRequest
#   #   campaignId - SOAP::SOAPLong
#   class DeleteTargetFromCampaignRequest
#     attr_accessor :campaignId
# 
#     def initialize(campaignId = nil)
#       @campaignId = campaignId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignResponse
#   class DeleteTargetFromCampaignResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsRequest
#   #   campaignIds - AdCenterWrapper::ArrayOflong
#   class GetTargetsByCampaignIdsRequest
#     attr_accessor :campaignIds
# 
#     def initialize(campaignIds = nil)
#       @campaignIds = campaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsResponse
#   #   targets - AdCenterWrapper::ArrayOfTarget
#   class GetTargetsByCampaignIdsResponse
#     attr_accessor :targets
# 
#     def initialize(targets = nil)
#       @targets = targets
#     end
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
#   class ArrayOflong < ::Array
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
#   class ArrayOfstring < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInvoiceInfo
#   class ArrayOfInvoiceInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}InvoiceInfo
#   #   accountId - SOAP::SOAPLong
#   #   accountName - SOAP::SOAPString
#   #   accountNumber - SOAP::SOAPString
#   #   amount - SOAP::SOAPDouble
#   #   currencyCode - SOAP::SOAPString
#   #   invoiceDate - SOAP::SOAPDateTime
#   #   invoiceId - SOAP::SOAPLong
#   class InvoiceInfo
#     attr_accessor :accountId
#     attr_accessor :accountName
#     attr_accessor :accountNumber
#     attr_accessor :amount
#     attr_accessor :currencyCode
#     attr_accessor :invoiceDate
#     attr_accessor :invoiceId
# 
#     def initialize(accountId = nil, accountName = nil, accountNumber = nil, amount = nil, currencyCode = nil, invoiceDate = nil, invoiceId = nil)
#       @accountId = accountId
#       @accountName = accountName
#       @accountNumber = accountNumber
#       @amount = amount
#       @currencyCode = currencyCode
#       @invoiceDate = invoiceDate
#       @invoiceId = invoiceId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInvoice
#   class ArrayOfInvoice < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Invoice
#   #   data - SOAP::SOAPBase64
#   #   id - SOAP::SOAPLong
#   #   type - AdCenterWrapper::DataType
#   class Invoice
#     attr_accessor :data
#     attr_accessor :id
#     attr_accessor :type
# 
#     def initialize(data = nil, id = nil, type = nil)
#       @data = data
#       @id = id
#       @type = type
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}InsertionOrder
#   #   accountId - SOAP::SOAPLong
#   #   balanceAmount - SOAP::SOAPDouble
#   #   bookingCountryCode - SOAP::SOAPString
#   #   comment - SOAP::SOAPString
#   #   endDate - SOAP::SOAPDateTime
#   #   insertionOrderId - SOAP::SOAPLong
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   notificationThreshold - SOAP::SOAPDouble
#   #   referenceId - SOAP::SOAPLong
#   #   spendCapAmount - SOAP::SOAPDouble
#   #   startDate - SOAP::SOAPDateTime
#   class InsertionOrder
#     attr_accessor :accountId
#     attr_accessor :balanceAmount
#     attr_accessor :bookingCountryCode
#     attr_accessor :comment
#     attr_accessor :endDate
#     attr_accessor :insertionOrderId
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :notificationThreshold
#     attr_accessor :referenceId
#     attr_accessor :spendCapAmount
#     attr_accessor :startDate
# 
#     def initialize(accountId = nil, balanceAmount = nil, bookingCountryCode = nil, comment = nil, endDate = nil, insertionOrderId = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, notificationThreshold = nil, referenceId = nil, spendCapAmount = nil, startDate = nil)
#       @accountId = accountId
#       @balanceAmount = balanceAmount
#       @bookingCountryCode = bookingCountryCode
#       @comment = comment
#       @endDate = endDate
#       @insertionOrderId = insertionOrderId
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @notificationThreshold = notificationThreshold
#       @referenceId = referenceId
#       @spendCapAmount = spendCapAmount
#       @startDate = startDate
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInsertionOrder
#   class ArrayOfInsertionOrder < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
#   class ArrayOfOperationError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class OperationError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, message = nil)
#       @code = code
#       @details = details
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfBatchError
#   class ArrayOfBatchError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}BatchError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   index - SOAP::SOAPInt
#   #   message - SOAP::SOAPString
#   class BatchError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :index
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, index = nil, message = nil)
#       @code = code
#       @details = details
#       @index = index
#       @message = message
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   #   trackingId - SOAP::SOAPString
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class ApiFault < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#   #   trackingId - SOAP::SOAPString
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   #   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   class ApiBatchFault < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :operationErrors
#     attr_accessor :batchErrors
# 
#     def initialize(trackingId = nil, operationErrors = nil, batchErrors = nil)
#       @trackingId = trackingId
#       @operationErrors = operationErrors
#       @batchErrors = batchErrors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}DataType
#   class DataType < ::String
#     Pdf = DataType.new("Pdf")
#     Xml = DataType.new("Xml")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoRequest
#   #   accountIds - AdCenterWrapper::ArrayOflong
#   #   startDate - SOAP::SOAPDateTime
#   #   endDate - SOAP::SOAPDateTime
#   class GetInvoicesInfoRequest
#     attr_accessor :accountIds
#     attr_accessor :startDate
#     attr_accessor :endDate
# 
#     def initialize(accountIds = nil, startDate = nil, endDate = nil)
#       @accountIds = accountIds
#       @startDate = startDate
#       @endDate = endDate
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoResponse
#   #   invoicesInfo - AdCenterWrapper::ArrayOfInvoiceInfo
#   class GetInvoicesInfoResponse
#     attr_accessor :invoicesInfo
# 
#     def initialize(invoicesInfo = nil)
#       @invoicesInfo = invoicesInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesRequest
#   #   invoiceIds - AdCenterWrapper::ArrayOflong
#   #   type - AdCenterWrapper::DataType
#   class GetInvoicesRequest
#     attr_accessor :invoiceIds
#     attr_accessor :type
# 
#     def initialize(invoiceIds = nil, type = nil)
#       @invoiceIds = invoiceIds
#       @type = type
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesResponse
#   #   invoices - AdCenterWrapper::ArrayOfInvoice
#   class GetInvoicesResponse
#     attr_accessor :invoices
# 
#     def initialize(invoices = nil)
#       @invoices = invoices
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesRequest
#   #   invoiceIds - AdCenterWrapper::ArrayOflong
#   #   type - AdCenterWrapper::DataType
#   class GetDisplayInvoicesRequest
#     attr_accessor :invoiceIds
#     attr_accessor :type
# 
#     def initialize(invoiceIds = nil, type = nil)
#       @invoiceIds = invoiceIds
#       @type = type
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesResponse
#   #   invoices - AdCenterWrapper::ArrayOfInvoice
#   class GetDisplayInvoicesResponse
#     attr_accessor :invoices
# 
#     def initialize(invoices = nil)
#       @invoices = invoices
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderRequest
#   #   insertionOrder - AdCenterWrapper::InsertionOrder
#   class AddInsertionOrderRequest
#     attr_accessor :insertionOrder
# 
#     def initialize(insertionOrder = nil)
#       @insertionOrder = insertionOrder
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderResponse
#   #   insertionOrderId - SOAP::SOAPLong
#   #   createTime - SOAP::SOAPDateTime
#   class AddInsertionOrderResponse
#     attr_accessor :insertionOrderId
#     attr_accessor :createTime
# 
#     def initialize(insertionOrderId = nil, createTime = nil)
#       @insertionOrderId = insertionOrderId
#       @createTime = createTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderRequest
#   #   insertionOrder - AdCenterWrapper::InsertionOrder
#   class UpdateInsertionOrderRequest
#     attr_accessor :insertionOrder
# 
#     def initialize(insertionOrder = nil)
#       @insertionOrder = insertionOrder
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderResponse
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   class UpdateInsertionOrderResponse
#     attr_accessor :lastModifiedTime
# 
#     def initialize(lastModifiedTime = nil)
#       @lastModifiedTime = lastModifiedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountRequest
#   #   accountId - SOAP::SOAPLong
#   #   insertionOrderIds - AdCenterWrapper::ArrayOflong
#   class GetInsertionOrdersByAccountRequest
#     attr_accessor :accountId
#     attr_accessor :insertionOrderIds
# 
#     def initialize(accountId = nil, insertionOrderIds = nil)
#       @accountId = accountId
#       @insertionOrderIds = insertionOrderIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountResponse
#   #   insertionOrders - AdCenterWrapper::ArrayOfInsertionOrder
#   class GetInsertionOrdersByAccountResponse
#     attr_accessor :insertionOrders
# 
#     def initialize(insertionOrders = nil)
#       @insertionOrders = insertionOrders
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesRequest
#   #   invoiceIds - AdCenterWrapper::ArrayOfstring
#   class GetKOHIOInvoicesRequest
#     attr_accessor :invoiceIds
# 
#     def initialize(invoiceIds = nil)
#       @invoiceIds = invoiceIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesResponse
#   #   invoices - AdCenterWrapper::ArrayOfInvoice
#   class GetKOHIOInvoicesResponse
#     attr_accessor :invoices
# 
#     def initialize(invoices = nil)
#       @invoices = invoices
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfAccountInfo
#   class ArrayOfAccountInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountInfo
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   #   number - SOAP::SOAPString
#   #   status - AdCenterWrapper::AccountLifeCycleStatus
#   class AccountInfo
#     attr_accessor :id
#     attr_accessor :name
#     attr_accessor :number
#     attr_accessor :status
# 
#     def initialize(id = nil, name = nil, number = nil, status = nil)
#       @id = id
#       @name = name
#       @number = number
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Account
#   #   accountType - AdCenterWrapper::AccountType
#   #   billToCustomerId - SOAP::SOAPLong
#   #   countryCode - SOAP::SOAPString
#   #   currencyType - AdCenterWrapper::CurrencyType
#   #   financialStatus - AdCenterWrapper::AccountFinancialStatus
#   #   id - SOAP::SOAPLong
#   #   language - AdCenterWrapper::LanguageType
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   name - SOAP::SOAPString
#   #   number - SOAP::SOAPString
#   #   parentCustomerId - SOAP::SOAPLong
#   #   paymentMethodId - SOAP::SOAPLong
#   #   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   #   primaryUserId - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AccountLifeCycleStatus
#   #   timeStamp - SOAP::SOAPBase64
#   #   timeZone - AdCenterWrapper::TimeZoneType
#   class Account
#     attr_accessor :accountType
#     attr_accessor :billToCustomerId
#     attr_accessor :countryCode
#     attr_accessor :currencyType
#     attr_accessor :financialStatus
#     attr_accessor :id
#     attr_accessor :language
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :name
#     attr_accessor :number
#     attr_accessor :parentCustomerId
#     attr_accessor :paymentMethodId
#     attr_accessor :paymentMethodType
#     attr_accessor :primaryUserId
#     attr_accessor :status
#     attr_accessor :timeStamp
#     attr_accessor :timeZone
# 
#     def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, financialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, status = nil, timeStamp = nil, timeZone = nil)
#       @accountType = accountType
#       @billToCustomerId = billToCustomerId
#       @countryCode = countryCode
#       @currencyType = currencyType
#       @financialStatus = financialStatus
#       @id = id
#       @language = language
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @name = name
#       @number = number
#       @parentCustomerId = parentCustomerId
#       @paymentMethodId = paymentMethodId
#       @paymentMethodType = paymentMethodType
#       @primaryUserId = primaryUserId
#       @status = status
#       @timeStamp = timeStamp
#       @timeZone = timeZone
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}PublisherAccount
#   #   accountType - AdCenterWrapper::AccountType
#   #   billToCustomerId - SOAP::SOAPLong
#   #   countryCode - SOAP::SOAPString
#   #   currencyType - AdCenterWrapper::CurrencyType
#   #   financialStatus - AdCenterWrapper::AccountFinancialStatus
#   #   id - SOAP::SOAPLong
#   #   language - AdCenterWrapper::LanguageType
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   name - SOAP::SOAPString
#   #   number - SOAP::SOAPString
#   #   parentCustomerId - SOAP::SOAPLong
#   #   paymentMethodId - SOAP::SOAPLong
#   #   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   #   primaryUserId - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AccountLifeCycleStatus
#   #   timeStamp - SOAP::SOAPBase64
#   #   timeZone - AdCenterWrapper::TimeZoneType
#   class PublisherAccount < Account
#     attr_accessor :accountType
#     attr_accessor :billToCustomerId
#     attr_accessor :countryCode
#     attr_accessor :currencyType
#     attr_accessor :financialStatus
#     attr_accessor :id
#     attr_accessor :language
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :name
#     attr_accessor :number
#     attr_accessor :parentCustomerId
#     attr_accessor :paymentMethodId
#     attr_accessor :paymentMethodType
#     attr_accessor :primaryUserId
#     attr_accessor :status
#     attr_accessor :timeStamp
#     attr_accessor :timeZone
# 
#     def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, financialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, status = nil, timeStamp = nil, timeZone = nil)
#       @accountType = accountType
#       @billToCustomerId = billToCustomerId
#       @countryCode = countryCode
#       @currencyType = currencyType
#       @financialStatus = financialStatus
#       @id = id
#       @language = language
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @name = name
#       @number = number
#       @parentCustomerId = parentCustomerId
#       @paymentMethodId = paymentMethodId
#       @paymentMethodType = paymentMethodType
#       @primaryUserId = primaryUserId
#       @status = status
#       @timeStamp = timeStamp
#       @timeZone = timeZone
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}AdvertiserAccount
#   #   accountType - AdCenterWrapper::AccountType
#   #   billToCustomerId - SOAP::SOAPLong
#   #   countryCode - SOAP::SOAPString
#   #   currencyType - AdCenterWrapper::CurrencyType
#   #   financialStatus - AdCenterWrapper::AccountFinancialStatus
#   #   id - SOAP::SOAPLong
#   #   language - AdCenterWrapper::LanguageType
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   name - SOAP::SOAPString
#   #   number - SOAP::SOAPString
#   #   parentCustomerId - SOAP::SOAPLong
#   #   paymentMethodId - SOAP::SOAPLong
#   #   paymentMethodType - AdCenterWrapper::PaymentMethodType
#   #   primaryUserId - SOAP::SOAPLong
#   #   status - AdCenterWrapper::AccountLifeCycleStatus
#   #   timeStamp - SOAP::SOAPBase64
#   #   timeZone - AdCenterWrapper::TimeZoneType
#   #   agencyContactName - SOAP::SOAPString
#   #   agencyCustomerId - SOAP::SOAPLong
#   #   salesHouseCustomerId - SOAP::SOAPLong
#   class AdvertiserAccount < Account
#     attr_accessor :accountType
#     attr_accessor :billToCustomerId
#     attr_accessor :countryCode
#     attr_accessor :currencyType
#     attr_accessor :financialStatus
#     attr_accessor :id
#     attr_accessor :language
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :name
#     attr_accessor :number
#     attr_accessor :parentCustomerId
#     attr_accessor :paymentMethodId
#     attr_accessor :paymentMethodType
#     attr_accessor :primaryUserId
#     attr_accessor :status
#     attr_accessor :timeStamp
#     attr_accessor :timeZone
#     attr_accessor :agencyContactName
#     attr_accessor :agencyCustomerId
#     attr_accessor :salesHouseCustomerId
# 
#     def initialize(accountType = nil, billToCustomerId = nil, countryCode = nil, currencyType = nil, financialStatus = nil, id = nil, language = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, name = nil, number = nil, parentCustomerId = nil, paymentMethodId = nil, paymentMethodType = nil, primaryUserId = nil, status = nil, timeStamp = nil, timeZone = nil, agencyContactName = nil, agencyCustomerId = nil, salesHouseCustomerId = nil)
#       @accountType = accountType
#       @billToCustomerId = billToCustomerId
#       @countryCode = countryCode
#       @currencyType = currencyType
#       @financialStatus = financialStatus
#       @id = id
#       @language = language
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @name = name
#       @number = number
#       @parentCustomerId = parentCustomerId
#       @paymentMethodId = paymentMethodId
#       @paymentMethodType = paymentMethodType
#       @primaryUserId = primaryUserId
#       @status = status
#       @timeStamp = timeStamp
#       @timeZone = timeZone
#       @agencyContactName = agencyContactName
#       @agencyCustomerId = agencyCustomerId
#       @salesHouseCustomerId = salesHouseCustomerId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Customer
#   #   customerAddress - AdCenterWrapper::Address
#   #   financialStatus - AdCenterWrapper::CustomerFinancialStatus
#   #   id - SOAP::SOAPLong
#   #   industry - AdCenterWrapper::Industry
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   market - AdCenterWrapper::Market
#   #   name - SOAP::SOAPString
#   #   serviceLevel - AdCenterWrapper::ServiceLevel
#   #   status - AdCenterWrapper::CustomerLifeCycleStatus
#   #   timeStamp - SOAP::SOAPBase64
#   class Customer
#     attr_accessor :customerAddress
#     attr_accessor :financialStatus
#     attr_accessor :id
#     attr_accessor :industry
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :market
#     attr_accessor :name
#     attr_accessor :serviceLevel
#     attr_accessor :status
#     attr_accessor :timeStamp
# 
#     def initialize(customerAddress = nil, financialStatus = nil, id = nil, industry = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, market = nil, name = nil, serviceLevel = nil, status = nil, timeStamp = nil)
#       @customerAddress = customerAddress
#       @financialStatus = financialStatus
#       @id = id
#       @industry = industry
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @market = market
#       @name = name
#       @serviceLevel = serviceLevel
#       @status = status
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Address
#   #   city - SOAP::SOAPString
#   #   countryCode - SOAP::SOAPString
#   #   id - SOAP::SOAPLong
#   #   line1 - SOAP::SOAPString
#   #   line2 - SOAP::SOAPString
#   #   line3 - SOAP::SOAPString
#   #   line4 - SOAP::SOAPString
#   #   postalCode - SOAP::SOAPString
#   #   stateOrProvince - SOAP::SOAPString
#   #   timeStamp - SOAP::SOAPBase64
#   class Address
#     attr_accessor :city
#     attr_accessor :countryCode
#     attr_accessor :id
#     attr_accessor :line1
#     attr_accessor :line2
#     attr_accessor :line3
#     attr_accessor :line4
#     attr_accessor :postalCode
#     attr_accessor :stateOrProvince
#     attr_accessor :timeStamp
# 
#     def initialize(city = nil, countryCode = nil, id = nil, line1 = nil, line2 = nil, line3 = nil, line4 = nil, postalCode = nil, stateOrProvince = nil, timeStamp = nil)
#       @city = city
#       @countryCode = countryCode
#       @id = id
#       @line1 = line1
#       @line2 = line2
#       @line3 = line3
#       @line4 = line4
#       @postalCode = postalCode
#       @stateOrProvince = stateOrProvince
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}User
#   #   contactInfo - AdCenterWrapper::ContactInfo
#   #   customerAppScope - AdCenterWrapper::ApplicationType
#   #   customerId - SOAP::SOAPLong
#   #   id - SOAP::SOAPLong
#   #   jobTitle - SOAP::SOAPString
#   #   lastModifiedByUserId - SOAP::SOAPLong
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   #   lcid - AdCenterWrapper::LCID
#   #   name - AdCenterWrapper::PersonName
#   #   password - SOAP::SOAPString
#   #   secretAnswer - SOAP::SOAPString
#   #   secretQuestion - AdCenterWrapper::SecretQuestion
#   #   status - AdCenterWrapper::UserStatus
#   #   timeStamp - SOAP::SOAPBase64
#   #   userName - SOAP::SOAPString
#   class User
#     attr_accessor :contactInfo
#     attr_accessor :customerAppScope
#     attr_accessor :customerId
#     attr_accessor :id
#     attr_accessor :jobTitle
#     attr_accessor :lastModifiedByUserId
#     attr_accessor :lastModifiedTime
#     attr_accessor :lcid
#     attr_accessor :name
#     attr_accessor :password
#     attr_accessor :secretAnswer
#     attr_accessor :secretQuestion
#     attr_accessor :status
#     attr_accessor :timeStamp
#     attr_accessor :userName
# 
#     def initialize(contactInfo = nil, customerAppScope = nil, customerId = nil, id = nil, jobTitle = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, lcid = nil, name = nil, password = nil, secretAnswer = nil, secretQuestion = nil, status = nil, timeStamp = nil, userName = nil)
#       @contactInfo = contactInfo
#       @customerAppScope = customerAppScope
#       @customerId = customerId
#       @id = id
#       @jobTitle = jobTitle
#       @lastModifiedByUserId = lastModifiedByUserId
#       @lastModifiedTime = lastModifiedTime
#       @lcid = lcid
#       @name = name
#       @password = password
#       @secretAnswer = secretAnswer
#       @secretQuestion = secretQuestion
#       @status = status
#       @timeStamp = timeStamp
#       @userName = userName
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ContactInfo
#   #   address - AdCenterWrapper::Address
#   #   contactByPhone - SOAP::SOAPBoolean
#   #   contactByPostalMail - SOAP::SOAPBoolean
#   #   email - SOAP::SOAPString
#   #   emailFormat - AdCenterWrapper::EmailFormat
#   #   fax - SOAP::SOAPString
#   #   homePhone - SOAP::SOAPString
#   #   id - SOAP::SOAPLong
#   #   mobile - SOAP::SOAPString
#   #   phone1 - SOAP::SOAPString
#   #   phone2 - SOAP::SOAPString
#   class ContactInfo
#     attr_accessor :address
#     attr_accessor :contactByPhone
#     attr_accessor :contactByPostalMail
#     attr_accessor :email
#     attr_accessor :emailFormat
#     attr_accessor :fax
#     attr_accessor :homePhone
#     attr_accessor :id
#     attr_accessor :mobile
#     attr_accessor :phone1
#     attr_accessor :phone2
# 
#     def initialize(address = nil, contactByPhone = nil, contactByPostalMail = nil, email = nil, emailFormat = nil, fax = nil, homePhone = nil, id = nil, mobile = nil, phone1 = nil, phone2 = nil)
#       @address = address
#       @contactByPhone = contactByPhone
#       @contactByPostalMail = contactByPostalMail
#       @email = email
#       @emailFormat = emailFormat
#       @fax = fax
#       @homePhone = homePhone
#       @id = id
#       @mobile = mobile
#       @phone1 = phone1
#       @phone2 = phone2
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}PersonName
#   #   firstName - SOAP::SOAPString
#   #   lastName - SOAP::SOAPString
#   #   middleInitial - SOAP::SOAPString
#   class PersonName
#     attr_accessor :firstName
#     attr_accessor :lastName
#     attr_accessor :middleInitial
# 
#     def initialize(firstName = nil, lastName = nil, middleInitial = nil)
#       @firstName = firstName
#       @lastName = lastName
#       @middleInitial = middleInitial
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfCustomerInfo
#   class ArrayOfCustomerInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerInfo
#   #   id - SOAP::SOAPLong
#   #   name - SOAP::SOAPString
#   class CustomerInfo
#     attr_accessor :id
#     attr_accessor :name
# 
#     def initialize(id = nil, name = nil)
#       @id = id
#       @name = name
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfUserInfo
#   class ArrayOfUserInfo < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}UserInfo
#   #   id - SOAP::SOAPLong
#   #   userName - SOAP::SOAPString
#   class UserInfo
#     attr_accessor :id
#     attr_accessor :userName
# 
#     def initialize(id = nil, userName = nil)
#       @id = id
#       @userName = userName
#     end
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
#   class ArrayOflong < ::Array
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfint
#   class ArrayOfint < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
#   class ArrayOfOperationError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class OperationError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, message = nil)
#       @code = code
#       @details = details
#       @message = message
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   #   trackingId - SOAP::SOAPString
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class ApiFault < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountLifeCycleStatus
#   class AccountLifeCycleStatus < ::String
#     Active = AccountLifeCycleStatus.new("Active")
#     Draft = AccountLifeCycleStatus.new("Draft")
#     Inactive = AccountLifeCycleStatus.new("Inactive")
#     Pause = AccountLifeCycleStatus.new("Pause")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountType
#   class AccountType < ::String
#     Advertiser = AccountType.new("Advertiser")
#     Publisher = AccountType.new("Publisher")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CurrencyType
#   class CurrencyType < ::String
#     AlgerianDinar = CurrencyType.new("AlgerianDinar")
#     ArgentinePeso = CurrencyType.new("ArgentinePeso")
#     ArmenianDram = CurrencyType.new("ArmenianDram")
#     AustralianDollar = CurrencyType.new("AustralianDollar")
#     AzerbaijanianManat = CurrencyType.new("AzerbaijanianManat")
#     BahrainiDinar = CurrencyType.new("BahrainiDinar")
#     Baht = CurrencyType.new("Baht")
#     Balboa = CurrencyType.new("Balboa")
#     BelarussianRuble = CurrencyType.new("BelarussianRuble")
#     BelizeDollar = CurrencyType.new("BelizeDollar")
#     Bolivar = CurrencyType.new("Bolivar")
#     Boliviano = CurrencyType.new("Boliviano")
#     BrazilianReal = CurrencyType.new("BrazilianReal")
#     BruneiDollar = CurrencyType.new("BruneiDollar")
#     CanadianDollar = CurrencyType.new("CanadianDollar")
#     ChileanPeso = CurrencyType.new("ChileanPeso")
#     ColombianPeso = CurrencyType.new("ColombianPeso")
#     CordobaOro = CurrencyType.new("CordobaOro")
#     CostaRicanColon = CurrencyType.new("CostaRicanColon")
#     Croatiankuna = CurrencyType.new("Croatiankuna")
#     CzechKoruna = CurrencyType.new("CzechKoruna")
#     DanishKrone = CurrencyType.new("DanishKrone")
#     Denar = CurrencyType.new("Denar")
#     DominicanPeso = CurrencyType.new("DominicanPeso")
#     Dong = CurrencyType.new("Dong")
#     EgyptianPound = CurrencyType.new("EgyptianPound")
#     Euro = CurrencyType.new("Euro")
#     Forint = CurrencyType.new("Forint")
#     Guarani = CurrencyType.new("Guarani")
#     HongKongDollar = CurrencyType.new("HongKongDollar")
#     Hryvnia = CurrencyType.new("Hryvnia")
#     IcelandKrona = CurrencyType.new("IcelandKrona")
#     IndianRupee = CurrencyType.new("IndianRupee")
#     IranianRial = CurrencyType.new("IranianRial")
#     IraqiDinar = CurrencyType.new("IraqiDinar")
#     JamaicanDollar = CurrencyType.new("JamaicanDollar")
#     JapaneseYen = CurrencyType.new("JapaneseYen")
#     JordanianDinar = CurrencyType.new("JordanianDinar")
#     KenyanShilling = CurrencyType.new("KenyanShilling")
#     Kroon = CurrencyType.new("Kroon")
#     KuwaitiDinar = CurrencyType.new("KuwaitiDinar")
#     Lari = CurrencyType.new("Lari")
#     LatvianLats = CurrencyType.new("LatvianLats")
#     LebanesePound = CurrencyType.new("LebanesePound")
#     Lek = CurrencyType.new("Lek")
#     Lempira = CurrencyType.new("Lempira")
#     Leu = CurrencyType.new("Leu")
#     Lev = CurrencyType.new("Lev")
#     LibyanDinar = CurrencyType.new("LibyanDinar")
#     LithuanianLitus = CurrencyType.new("LithuanianLitus")
#     MalaysianRinggit = CurrencyType.new("MalaysianRinggit")
#     MexicanPeso = CurrencyType.new("MexicanPeso")
#     MoroccanDirham = CurrencyType.new("MoroccanDirham")
#     NewIsraeliSheqel = CurrencyType.new("NewIsraeliSheqel")
#     NewTaiwanDollar = CurrencyType.new("NewTaiwanDollar")
#     NewZealandDollar = CurrencyType.new("NewZealandDollar")
#     NorwegianKrone = CurrencyType.new("NorwegianKrone")
#     NuevoSol = CurrencyType.new("NuevoSol")
#     PakistanRupee = CurrencyType.new("PakistanRupee")
#     Pataca = CurrencyType.new("Pataca")
#     PesoUruguayo = CurrencyType.new("PesoUruguayo")
#     PhilippinePeso = CurrencyType.new("PhilippinePeso")
#     QatariRial = CurrencyType.new("QatariRial")
#     Quetzal = CurrencyType.new("Quetzal")
#     RialOmani = CurrencyType.new("RialOmani")
#     Rufiyaa = CurrencyType.new("Rufiyaa")
#     Rupiah = CurrencyType.new("Rupiah")
#     RussianRuble = CurrencyType.new("RussianRuble")
#     SaudiRiyal = CurrencyType.new("SaudiRiyal")
#     SingaporeDollar = CurrencyType.new("SingaporeDollar")
#     SlovakKoruna = CurrencyType.new("SlovakKoruna")
#     Som = CurrencyType.new("Som")
#     SouthAfricanRand = CurrencyType.new("SouthAfricanRand")
#     SwedishKrona = CurrencyType.new("SwedishKrona")
#     SwissFranc = CurrencyType.new("SwissFranc")
#     SyrianPound = CurrencyType.new("SyrianPound")
#     Tenge = CurrencyType.new("Tenge")
#     Tolar = CurrencyType.new("Tolar")
#     TrinidadandTobagoDollar = CurrencyType.new("TrinidadandTobagoDollar")
#     Tugrik = CurrencyType.new("Tugrik")
#     TunisianDinar = CurrencyType.new("TunisianDinar")
#     TurkishLira = CurrencyType.new("TurkishLira")
#     UAEDirham = CurrencyType.new("UAEDirham")
#     UKPound = CurrencyType.new("UKPound")
#     USDollar = CurrencyType.new("USDollar")
#     UzbekistanSum = CurrencyType.new("UzbekistanSum")
#     Won = CurrencyType.new("Won")
#     YemeniRial = CurrencyType.new("YemeniRial")
#     YuanRenminbi = CurrencyType.new("YuanRenminbi")
#     YugoslavianNewDinar = CurrencyType.new("YugoslavianNewDinar")
#     ZimbabweDollar = CurrencyType.new("ZimbabweDollar")
#     Zloty = CurrencyType.new("Zloty")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}AccountFinancialStatus
#   class AccountFinancialStatus < ::String
#     ClearFinancialStatus = AccountFinancialStatus.new("ClearFinancialStatus")
#     CreditWarning = AccountFinancialStatus.new("CreditWarning")
#     Hold = AccountFinancialStatus.new("Hold")
#     PendingCreditCheck = AccountFinancialStatus.new("PendingCreditCheck")
#     Proposed = AccountFinancialStatus.new("Proposed")
#     SoldToOnly = AccountFinancialStatus.new("SoldToOnly")
#     TaxOnHold = AccountFinancialStatus.new("TaxOnHold")
#     UserHold = AccountFinancialStatus.new("UserHold")
#     WriteOff = AccountFinancialStatus.new("WriteOff")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}LanguageType
#   class LanguageType < ::String
#     Danish = LanguageType.new("Danish")
#     Dutch = LanguageType.new("Dutch")
#     English = LanguageType.new("English")
#     Finnish = LanguageType.new("Finnish")
#     French = LanguageType.new("French")
#     German = LanguageType.new("German")
#     Italian = LanguageType.new("Italian")
#     Japanese = LanguageType.new("Japanese")
#     Norwegian = LanguageType.new("Norwegian")
#     Portuguese = LanguageType.new("Portuguese")
#     Spanish = LanguageType.new("Spanish")
#     Swedish = LanguageType.new("Swedish")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}PaymentMethodType
#   class PaymentMethodType < ::String
#     Check = PaymentMethodType.new("Check")
#     CreditCard = PaymentMethodType.new("CreditCard")
#     ElectronicFundsTransfer = PaymentMethodType.new("ElectronicFundsTransfer")
#     Invoice = PaymentMethodType.new("Invoice")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}TimeZoneType
#   class TimeZoneType < ::String
#     AbuDhabiMuscat = TimeZoneType.new("AbuDhabiMuscat")
#     Adelaide = TimeZoneType.new("Adelaide")
#     Alaska = TimeZoneType.new("Alaska")
#     AlmatyNovosibirsk = TimeZoneType.new("AlmatyNovosibirsk")
#     AmsterdamBerlinBernRomeStockholmVienna = TimeZoneType.new("AmsterdamBerlinBernRomeStockholmVienna")
#     Arizona = TimeZoneType.new("Arizona")
#     AstanaDhaka = TimeZoneType.new("AstanaDhaka")
#     AthensBuckarestIstanbul = TimeZoneType.new("AthensBuckarestIstanbul")
#     AtlanticTimeCanada = TimeZoneType.new("AtlanticTimeCanada")
#     AucklandWellington = TimeZoneType.new("AucklandWellington")
#     Azores = TimeZoneType.new("Azores")
#     Baghdad = TimeZoneType.new("Baghdad")
#     BakuTbilisiYerevan = TimeZoneType.new("BakuTbilisiYerevan")
#     BangkokHanoiJakarta = TimeZoneType.new("BangkokHanoiJakarta")
#     BeijingChongqingHongKongUrumqi = TimeZoneType.new("BeijingChongqingHongKongUrumqi")
#     BelgradeBratislavaBudapestLjubljanaPrague = TimeZoneType.new("BelgradeBratislavaBudapestLjubljanaPrague")
#     BogotaLimaQuito = TimeZoneType.new("BogotaLimaQuito")
#     Brasilia = TimeZoneType.new("Brasilia")
#     Brisbane = TimeZoneType.new("Brisbane")
#     BrusselsCopenhagenMadridParis = TimeZoneType.new("BrusselsCopenhagenMadridParis")
#     Bucharest = TimeZoneType.new("Bucharest")
#     BuenosAiresGeorgetown = TimeZoneType.new("BuenosAiresGeorgetown")
#     Cairo = TimeZoneType.new("Cairo")
#     CanberraMelbourneSydney = TimeZoneType.new("CanberraMelbourneSydney")
#     CapeVerdeIsland = TimeZoneType.new("CapeVerdeIsland")
#     CaracasLaPaz = TimeZoneType.new("CaracasLaPaz")
#     CasablancaMonrovia = TimeZoneType.new("CasablancaMonrovia")
#     CentralAmerica = TimeZoneType.new("CentralAmerica")
#     CentralTimeUSCanada = TimeZoneType.new("CentralTimeUSCanada")
#     ChennaiKolkataMumbaiNewDelhi = TimeZoneType.new("ChennaiKolkataMumbaiNewDelhi")
#     ChihuahuaLaPazMazatlan = TimeZoneType.new("ChihuahuaLaPazMazatlan")
#     Darwin = TimeZoneType.new("Darwin")
#     EasternTimeUSCanada = TimeZoneType.new("EasternTimeUSCanada")
#     Ekaterinburg = TimeZoneType.new("Ekaterinburg")
#     FijiKamchatkaMarshallIsland = TimeZoneType.new("FijiKamchatkaMarshallIsland")
#     Greenland = TimeZoneType.new("Greenland")
#     GreenwichMeanTimeDublinEdinburghLisbonLondon = TimeZoneType.new("GreenwichMeanTimeDublinEdinburghLisbonLondon")
#     GuadalajaraMexicoCityMonterrey = TimeZoneType.new("GuadalajaraMexicoCityMonterrey")
#     GuamPortMoresby = TimeZoneType.new("GuamPortMoresby")
#     HararePretoria = TimeZoneType.new("HararePretoria")
#     Hawaii = TimeZoneType.new("Hawaii")
#     HelsinkiKyivRigaSofiaTallinnVilnius = TimeZoneType.new("HelsinkiKyivRigaSofiaTallinnVilnius")
#     Hobart = TimeZoneType.new("Hobart")
#     IndianaEast = TimeZoneType.new("IndianaEast")
#     InternationalDatelineWest = TimeZoneType.new("InternationalDatelineWest")
#     IrkutskUlaanBataar = TimeZoneType.new("IrkutskUlaanBataar")
#     IslamabadKarachiTashkent = TimeZoneType.new("IslamabadKarachiTashkent")
#     Jerusalem = TimeZoneType.new("Jerusalem")
#     Kabul = TimeZoneType.new("Kabul")
#     Kathmandu = TimeZoneType.new("Kathmandu")
#     Krasnoyarsk = TimeZoneType.new("Krasnoyarsk")
#     KualaLumpurSingapore = TimeZoneType.new("KualaLumpurSingapore")
#     KuwaitRiyadh = TimeZoneType.new("KuwaitRiyadh")
#     MagadanSolomonIslandNewCaledonia = TimeZoneType.new("MagadanSolomonIslandNewCaledonia")
#     MidAtlantic = TimeZoneType.new("MidAtlantic")
#     MidwayIslandAndSamoa = TimeZoneType.new("MidwayIslandAndSamoa")
#     MoscowStPetersburgVolgograd = TimeZoneType.new("MoscowStPetersburgVolgograd")
#     MountainTimeUSCanada = TimeZoneType.new("MountainTimeUSCanada")
#     Nairobi = TimeZoneType.new("Nairobi")
#     Newfoundland = TimeZoneType.new("Newfoundland")
#     Nukualofa = TimeZoneType.new("Nukualofa")
#     OsakaSapporoTokyo = TimeZoneType.new("OsakaSapporoTokyo")
#     PacificTimeUSCanadaTijuana = TimeZoneType.new("PacificTimeUSCanadaTijuana")
#     Perth = TimeZoneType.new("Perth")
#     Rangoon = TimeZoneType.new("Rangoon")
#     Santiago = TimeZoneType.new("Santiago")
#     SarajevoSkopjeWarsawZagreb = TimeZoneType.new("SarajevoSkopjeWarsawZagreb")
#     Saskatchewan = TimeZoneType.new("Saskatchewan")
#     Seoul = TimeZoneType.new("Seoul")
#     SriJayawardenepura = TimeZoneType.new("SriJayawardenepura")
#     Taipei = TimeZoneType.new("Taipei")
#     Tehran = TimeZoneType.new("Tehran")
#     Vladivostok = TimeZoneType.new("Vladivostok")
#     WestCentralAfrica = TimeZoneType.new("WestCentralAfrica")
#     Yakutsk = TimeZoneType.new("Yakutsk")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerFinancialStatus
#   class CustomerFinancialStatus < ::String
#     ClearFinancialStatus = CustomerFinancialStatus.new("ClearFinancialStatus")
#     CreditHold = CustomerFinancialStatus.new("CreditHold")
#     CreditWarning = CustomerFinancialStatus.new("CreditWarning")
#     PendingCreditCheck = CustomerFinancialStatus.new("PendingCreditCheck")
#     ProposalsOnly = CustomerFinancialStatus.new("ProposalsOnly")
#     SoldToOnly = CustomerFinancialStatus.new("SoldToOnly")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Industry
#   class Industry < ::String
#     AgencySalesHouse = Industry.new("AgencySalesHouse")
#     Automotive = Industry.new("Automotive")
#     ConsumerPackagedGoods = Industry.new("ConsumerPackagedGoods")
#     Education = Industry.new("Education")
#     Entertainment = Industry.new("Entertainment")
#     FinancialServices = Industry.new("FinancialServices")
#     FoodServices = Industry.new("FoodServices")
#     Gaming = Industry.new("Gaming")
#     GovernmentNonprofitPolitical = Industry.new("GovernmentNonprofitPolitical")
#     Healthcare = Industry.new("Healthcare")
#     Internal = Industry.new("Internal")
#     NA = Industry.new("NA")
#     Other = Industry.new("Other")
#     PublishingAndWebMedia = Industry.new("PublishingAndWebMedia")
#     RealEstate = Industry.new("RealEstate")
#     Retail = Industry.new("Retail")
#     Services = Industry.new("Services")
#     Technology = Industry.new("Technology")
#     Telecommunications = Industry.new("Telecommunications")
#     TravelHospitality = Industry.new("TravelHospitality")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Market
#   class Market < ::String
#     CanadaEN = Market.new("CanadaEN")
#     CanadaFR = Market.new("CanadaFR")
#     France = Market.new("France")
#     Singapore = Market.new("Singapore")
#     UK = Market.new("UK")
#     US = Market.new("US")
#     Undefined = Market.new("Undefined")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ServiceLevel
#   class ServiceLevel < ::String
#     Internal = ServiceLevel.new("Internal")
#     Premium = ServiceLevel.new("Premium")
#     Select = ServiceLevel.new("Select")
#     SelfServe = ServiceLevel.new("SelfServe")
#     SelfServeTrusted = ServiceLevel.new("SelfServeTrusted")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CustomerLifeCycleStatus
#   class CustomerLifeCycleStatus < ::String
#     Active = CustomerLifeCycleStatus.new("Active")
#     Inactive = CustomerLifeCycleStatus.new("Inactive")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}EmailFormat
#   class EmailFormat < ::String
#     Html = EmailFormat.new("Html")
#     Text = EmailFormat.new("Text")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}ApplicationType
#   class ApplicationType < ::String
#     Advertiser = ApplicationType.new("Advertiser")
#     Publisher = ApplicationType.new("Publisher")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}LCID
#   class LCID < ::String
#     EnglishCanada = LCID.new("EnglishCanada")
#     EnglishSingapore = LCID.new("EnglishSingapore")
#     EnglishUK = LCID.new("EnglishUK")
#     EnglishUS = LCID.new("EnglishUS")
#     FrenchCanada = LCID.new("FrenchCanada")
#     FrenchFrance = LCID.new("FrenchFrance")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}SecretQuestion
#   class SecretQuestion < ::String
#     Anniversary = SecretQuestion.new("Anniversary")
#     FatherMiddleName = SecretQuestion.new("FatherMiddleName")
#     FavoriteMovie = SecretQuestion.new("FavoriteMovie")
#     FavoritePetsName = SecretQuestion.new("FavoritePetsName")
#     FavoriteSportsTeam = SecretQuestion.new("FavoriteSportsTeam")
#     FavoriteTeacherName = SecretQuestion.new("FavoriteTeacherName")
#     FirstChildMiddleName = SecretQuestion.new("FirstChildMiddleName")
#     HighSchoolName = SecretQuestion.new("HighSchoolName")
#     None = SecretQuestion.new("None")
#     SpouseMiddleName = SecretQuestion.new("SpouseMiddleName")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}UserStatus
#   class UserStatus < ::String
#     Active = UserStatus.new("Active")
#     Deleted = UserStatus.new("Deleted")
#     Inactive = UserStatus.new("Inactive")
#     New = UserStatus.new("New")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}UserRole
#   class UserRole < ::String
#     AdvertiserCampaignManager = UserRole.new("AdvertiserCampaignManager")
#     ClientAdmin = UserRole.new("ClientAdmin")
#     ClientManager = UserRole.new("ClientManager")
#     ClientViewer = UserRole.new("ClientViewer")
#     PublisherAccountManager = UserRole.new("PublisherAccountManager")
#     PublisherAdViewer = UserRole.new("PublisherAdViewer")
#     PublisherAdmin = UserRole.new("PublisherAdmin")
#     PublisherListManager = UserRole.new("PublisherListManager")
#     PublisherReportUser = UserRole.new("PublisherReportUser")
#     SuperAdmin = UserRole.new("SuperAdmin")
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoRequest
#   #   customerId - SOAP::SOAPLong
#   class GetAccountsInfoRequest
#     attr_accessor :customerId
# 
#     def initialize(customerId = nil)
#       @customerId = customerId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoResponse
#   #   accountsInfo - AdCenterWrapper::ArrayOfAccountInfo
#   class GetAccountsInfoResponse
#     attr_accessor :accountsInfo
# 
#     def initialize(accountsInfo = nil)
#       @accountsInfo = accountsInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}AddAccountRequest
#   #   account - AdCenterWrapper::Account
#   class AddAccountRequest
#     attr_accessor :account
# 
#     def initialize(account = nil)
#       @account = account
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}AddAccountResponse
#   #   accountId - SOAP::SOAPLong
#   #   accountNumber - SOAP::SOAPString
#   #   createTime - SOAP::SOAPDateTime
#   class AddAccountResponse
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :createTime
# 
#     def initialize(accountId = nil, accountNumber = nil, createTime = nil)
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @createTime = createTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountRequest
#   #   account - AdCenterWrapper::Account
#   class UpdateAccountRequest
#     attr_accessor :account
# 
#     def initialize(account = nil)
#       @account = account
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountResponse
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   class UpdateAccountResponse
#     attr_accessor :lastModifiedTime
# 
#     def initialize(lastModifiedTime = nil)
#       @lastModifiedTime = lastModifiedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomerRequest
#   #   customerId - SOAP::SOAPLong
#   class GetCustomerRequest
#     attr_accessor :customerId
# 
#     def initialize(customerId = nil)
#       @customerId = customerId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomerResponse
#   #   customer - AdCenterWrapper::Customer
#   class GetCustomerResponse
#     attr_accessor :customer
# 
#     def initialize(customer = nil)
#       @customer = customer
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerRequest
#   #   customer - AdCenterWrapper::Customer
#   class UpdateCustomerRequest
#     attr_accessor :customer
# 
#     def initialize(customer = nil)
#       @customer = customer
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerResponse
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   class UpdateCustomerResponse
#     attr_accessor :lastModifiedTime
# 
#     def initialize(lastModifiedTime = nil)
#       @lastModifiedTime = lastModifiedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerRequest
#   #   customer - AdCenterWrapper::Customer
#   #   user - AdCenterWrapper::User
#   #   account - AdCenterWrapper::Account
#   #   parentCustomerId - SOAP::SOAPLong
#   #   applicationScope - AdCenterWrapper::ApplicationType
#   class SignupCustomerRequest
#     attr_accessor :customer
#     attr_accessor :user
#     attr_accessor :account
#     attr_accessor :parentCustomerId
#     attr_accessor :applicationScope
# 
#     def initialize(customer = nil, user = nil, account = nil, parentCustomerId = nil, applicationScope = nil)
#       @customer = customer
#       @user = user
#       @account = account
#       @parentCustomerId = parentCustomerId
#       @applicationScope = applicationScope
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerResponse
#   #   customerId - SOAP::SOAPLong
#   #   customerNumber - SOAP::SOAPString
#   #   userId - SOAP::SOAPLong
#   #   accountId - SOAP::SOAPLong
#   #   accountNumber - SOAP::SOAPString
#   #   createTime - SOAP::SOAPDateTime
#   class SignupCustomerResponse
#     attr_accessor :customerId
#     attr_accessor :customerNumber
#     attr_accessor :userId
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :createTime
# 
#     def initialize(customerId = nil, customerNumber = nil, userId = nil, accountId = nil, accountNumber = nil, createTime = nil)
#       @customerId = customerId
#       @customerNumber = customerNumber
#       @userId = userId
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @createTime = createTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetAccountRequest
#   #   accountId - SOAP::SOAPLong
#   class GetAccountRequest
#     attr_accessor :accountId
# 
#     def initialize(accountId = nil)
#       @accountId = accountId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetAccountResponse
#   #   account - AdCenterWrapper::Account
#   class GetAccountResponse
#     attr_accessor :account
# 
#     def initialize(account = nil)
#       @account = account
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoRequest
#   #   customerNameFilter - SOAP::SOAPString
#   #   topN - SOAP::SOAPInt
#   #   applicationScope - AdCenterWrapper::ApplicationType
#   class GetCustomersInfoRequest
#     attr_accessor :customerNameFilter
#     attr_accessor :topN
#     attr_accessor :applicationScope
# 
#     def initialize(customerNameFilter = nil, topN = nil, applicationScope = nil)
#       @customerNameFilter = customerNameFilter
#       @topN = topN
#       @applicationScope = applicationScope
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoResponse
#   #   customersInfo - AdCenterWrapper::ArrayOfCustomerInfo
#   class GetCustomersInfoResponse
#     attr_accessor :customersInfo
# 
#     def initialize(customersInfo = nil)
#       @customersInfo = customersInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}AddUserRequest
#   #   user - AdCenterWrapper::User
#   #   role - AdCenterWrapper::UserRole
#   #   accountIds - AdCenterWrapper::ArrayOflong
#   class AddUserRequest
#     attr_accessor :user
#     attr_accessor :role
#     attr_accessor :accountIds
# 
#     def initialize(user = nil, role = nil, accountIds = nil)
#       @user = user
#       @role = role
#       @accountIds = accountIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}AddUserResponse
#   #   id - SOAP::SOAPLong
#   #   createTime - SOAP::SOAPDateTime
#   class AddUserResponse
#     attr_accessor :id
#     attr_accessor :createTime
# 
#     def initialize(id = nil, createTime = nil)
#       @id = id
#       @createTime = createTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountRequest
#   #   accountId - SOAP::SOAPLong
#   #   timeStamp - SOAP::SOAPBase64
#   class DeleteAccountRequest
#     attr_accessor :accountId
#     attr_accessor :timeStamp
# 
#     def initialize(accountId = nil, timeStamp = nil)
#       @accountId = accountId
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountResponse
#   class DeleteAccountResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerRequest
#   #   customerId - SOAP::SOAPLong
#   #   timeStamp - SOAP::SOAPBase64
#   class DeleteCustomerRequest
#     attr_accessor :customerId
#     attr_accessor :timeStamp
# 
#     def initialize(customerId = nil, timeStamp = nil)
#       @customerId = customerId
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerResponse
#   class DeleteCustomerResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRequest
#   #   user - AdCenterWrapper::User
#   class UpdateUserRequest
#     attr_accessor :user
# 
#     def initialize(user = nil)
#       @user = user
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateUserResponse
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   class UpdateUserResponse
#     attr_accessor :lastModifiedTime
# 
#     def initialize(lastModifiedTime = nil)
#       @lastModifiedTime = lastModifiedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesRequest
#   #   customerId - SOAP::SOAPLong
#   #   userId - SOAP::SOAPLong
#   #   newRoleId - SOAP::SOAPInt
#   #   newAccountIds - AdCenterWrapper::ArrayOflong
#   #   newCustomerIds - AdCenterWrapper::ArrayOflong
#   #   deleteRoleId - SOAP::SOAPInt
#   #   deleteAccountIds - AdCenterWrapper::ArrayOflong
#   #   deleteCustomerIds - AdCenterWrapper::ArrayOflong
#   class UpdateUserRolesRequest
#     attr_accessor :customerId
#     attr_accessor :userId
#     attr_accessor :newRoleId
#     attr_accessor :newAccountIds
#     attr_accessor :newCustomerIds
#     attr_accessor :deleteRoleId
#     attr_accessor :deleteAccountIds
#     attr_accessor :deleteCustomerIds
# 
#     def initialize(customerId = nil, userId = nil, newRoleId = nil, newAccountIds = nil, newCustomerIds = nil, deleteRoleId = nil, deleteAccountIds = nil, deleteCustomerIds = nil)
#       @customerId = customerId
#       @userId = userId
#       @newRoleId = newRoleId
#       @newAccountIds = newAccountIds
#       @newCustomerIds = newCustomerIds
#       @deleteRoleId = deleteRoleId
#       @deleteAccountIds = deleteAccountIds
#       @deleteCustomerIds = deleteCustomerIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesResponse
#   #   lastModifiedTime - SOAP::SOAPDateTime
#   class UpdateUserRolesResponse
#     attr_accessor :lastModifiedTime
# 
#     def initialize(lastModifiedTime = nil)
#       @lastModifiedTime = lastModifiedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetUserRequest
#   #   userId - SOAP::SOAPLong
#   class GetUserRequest
#     attr_accessor :userId
# 
#     def initialize(userId = nil)
#       @userId = userId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetUserResponse
#   #   user - AdCenterWrapper::User
#   #   roles - AdCenterWrapper::ArrayOfint
#   #   accounts - AdCenterWrapper::ArrayOflong
#   #   customers - AdCenterWrapper::ArrayOflong
#   class GetUserResponse
#     attr_accessor :user
#     attr_accessor :roles
#     attr_accessor :accounts
#     attr_accessor :customers
# 
#     def initialize(user = nil, roles = nil, accounts = nil, customers = nil)
#       @user = user
#       @roles = roles
#       @accounts = accounts
#       @customers = customers
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteUserRequest
#   #   userId - SOAP::SOAPLong
#   #   timeStamp - SOAP::SOAPBase64
#   class DeleteUserRequest
#     attr_accessor :userId
#     attr_accessor :timeStamp
# 
#     def initialize(userId = nil, timeStamp = nil)
#       @userId = userId
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}DeleteUserResponse
#   class DeleteUserResponse
#     def initialize
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoRequest
#   #   customerId - SOAP::SOAPLong
#   #   statusFilter - AdCenterWrapper::UserStatus
#   class GetUsersInfoRequest
#     attr_accessor :customerId
#     attr_accessor :statusFilter
# 
#     def initialize(customerId = nil, statusFilter = nil)
#       @customerId = customerId
#       @statusFilter = statusFilter
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoResponse
#   #   usersInfo - AdCenterWrapper::ArrayOfUserInfo
#   class GetUsersInfoResponse
#     attr_accessor :usersInfo
# 
#     def initialize(usersInfo = nil)
#       @usersInfo = usersInfo
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureRequest
#   #   customerId - SOAP::SOAPLong
#   class GetCustomerPilotFeatureRequest
#     attr_accessor :customerId
# 
#     def initialize(customerId = nil)
#       @customerId = customerId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureResponse
#   #   featurePilotFlags - AdCenterWrapper::ArrayOfint
#   class GetCustomerPilotFeatureResponse
#     attr_accessor :featurePilotFlags
# 
#     def initialize(featurePilotFlags = nil)
#       @featurePilotFlags = featurePilotFlags
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   class ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn
#   #   filter - AdCenterWrapper::AdDynamicTextPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class AdDynamicTextPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn
#   #   filter - AdCenterWrapper::KeywordPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class KeywordPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn
#   #   filter - AdCenterWrapper::DestinationUrlPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class DestinationUrlPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TacticChannelReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfTacticChannelReportColumn
#   #   filter - AdCenterWrapper::TacticChannelReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class TacticChannelReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfAccountPerformanceReportColumn
#   #   filter - AdCenterWrapper::AccountPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class AccountPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn
#   #   filter - AdCenterWrapper::CampaignPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughCampaignReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class CampaignPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn
#   #   filter - AdCenterWrapper::AdGroupPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class AdGroupPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfAdPerformanceReportColumn
#   #   filter - AdCenterWrapper::AdPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class AdPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BudgetSummaryReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   columns - AdCenterWrapper::ArrayOfBudgetSummaryReportColumn
#   #   scope - AdCenterWrapper::AccountReportScope
#   #   time - AdCenterWrapper::BudgetSummaryReportTime
#   class BudgetSummaryReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :columns
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, columns = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @columns = columns
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn
#   #   filter - AdCenterWrapper::AgeGenderDemographicReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class AgeGenderDemographicReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn
#   #   filter - AdCenterWrapper::MetroAreaDemographicReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class MetroAreaDemographicReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn
#   #   filter - AdCenterWrapper::PublisherUsagePerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class PublisherUsagePerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SitePerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfSitePerformanceReportColumn
#   #   filter - AdCenterWrapper::SitePerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class SitePerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralTargetReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfBehavioralTargetReportColumn
#   #   filter - AdCenterWrapper::BehavioralTargetReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class BehavioralTargetReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::ReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn
#   #   filter - AdCenterWrapper::BehavioralPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class BehavioralPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::SearchQueryReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn
#   #   filter - AdCenterWrapper::SearchQueryPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class SearchQueryPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ConversionPerformanceReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfConversionPerformanceReportColumn
#   #   filter - AdCenterWrapper::ConversionPerformanceReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class ConversionPerformanceReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn
#   #   filter - AdCenterWrapper::GoalsAndFunnelsReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class GoalsAndFunnelsReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TrafficSourcesReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfTrafficSourcesReportColumn
#   #   filter - AdCenterWrapper::TrafficSourcesReportFilter
#   #   scope - AdCenterWrapper::AccountReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class TrafficSourcesReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SegmentationReportRequest
#   #   format - AdCenterWrapper::ReportFormat
#   #   language - AdCenterWrapper::ReportLanguage
#   #   reportName - SOAP::SOAPString
#   #   returnOnlyCompleteData - SOAP::SOAPBoolean
#   #   aggregation - AdCenterWrapper::NonHourlyReportAggregation
#   #   columns - AdCenterWrapper::ArrayOfSegmentationReportColumn
#   #   filter - AdCenterWrapper::SegmentationReportFilter
#   #   scope - AdCenterWrapper::AccountThroughAdGroupReportScope
#   #   time - AdCenterWrapper::ReportTime
#   class SegmentationReportRequest < ReportRequest
#     attr_accessor :format
#     attr_accessor :language
#     attr_accessor :reportName
#     attr_accessor :returnOnlyCompleteData
#     attr_accessor :aggregation
#     attr_accessor :columns
#     attr_accessor :filter
#     attr_accessor :scope
#     attr_accessor :time
# 
#     def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
#       @format = format
#       @language = language
#       @reportName = reportName
#       @returnOnlyCompleteData = returnOnlyCompleteData
#       @aggregation = aggregation
#       @columns = columns
#       @filter = filter
#       @scope = scope
#       @time = time
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdDynamicTextPerformanceReportColumn
#   class ArrayOfAdDynamicTextPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportFilter
#   #   adDistribution - (any)
#   #   adType - (any)
#   #   languageAndRegion - (any)
#   class AdDynamicTextPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :adType
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, adType = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @adType = adType
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountThroughAdGroupReportScope
#   #   accountIds - AdCenterWrapper::ArrayOflong
#   #   adGroups - AdCenterWrapper::ArrayOfAdGroupReportScope
#   #   campaigns - AdCenterWrapper::ArrayOfCampaignReportScope
#   class AccountThroughAdGroupReportScope
#     attr_accessor :accountIds
#     attr_accessor :adGroups
#     attr_accessor :campaigns
# 
#     def initialize(accountIds = nil, adGroups = nil, campaigns = nil)
#       @accountIds = accountIds
#       @adGroups = adGroups
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdGroupReportScope
#   class ArrayOfAdGroupReportScope < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupReportScope
#   #   parentAccountId - SOAP::SOAPLong
#   #   parentCampaignId - SOAP::SOAPLong
#   #   adGroupId - SOAP::SOAPLong
#   class AdGroupReportScope
#     attr_accessor :parentAccountId
#     attr_accessor :parentCampaignId
#     attr_accessor :adGroupId
# 
#     def initialize(parentAccountId = nil, parentCampaignId = nil, adGroupId = nil)
#       @parentAccountId = parentAccountId
#       @parentCampaignId = parentCampaignId
#       @adGroupId = adGroupId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCampaignReportScope
#   class ArrayOfCampaignReportScope < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignReportScope
#   #   parentAccountId - SOAP::SOAPLong
#   #   campaignId - SOAP::SOAPLong
#   class CampaignReportScope
#     attr_accessor :parentAccountId
#     attr_accessor :campaignId
# 
#     def initialize(parentAccountId = nil, campaignId = nil)
#       @parentAccountId = parentAccountId
#       @campaignId = campaignId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportTime
#   #   customDateRangeEnd - AdCenterWrapper::Date
#   #   customDateRangeStart - AdCenterWrapper::Date
#   #   predefinedTime - AdCenterWrapper::ReportTimePeriod
#   class ReportTime
#     attr_accessor :customDateRangeEnd
#     attr_accessor :customDateRangeStart
#     attr_accessor :predefinedTime
# 
#     def initialize(customDateRangeEnd = nil, customDateRangeStart = nil, predefinedTime = nil)
#       @customDateRangeEnd = customDateRangeEnd
#       @customDateRangeStart = customDateRangeStart
#       @predefinedTime = predefinedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}Date
#   #   day - SOAP::SOAPInt
#   #   month - SOAP::SOAPInt
#   #   year - SOAP::SOAPInt
#   class Date
#     attr_accessor :day
#     attr_accessor :month
#     attr_accessor :year
# 
#     def initialize(day = nil, month = nil, year = nil)
#       @day = day
#       @month = month
#       @year = year
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfKeywordPerformanceReportColumn
#   class ArrayOfKeywordPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordPerformanceReportFilter
#   #   adDistribution - (any)
#   #   adType - (any)
#   #   bidMatchType - (any)
#   #   cashback - (any)
#   #   deliveredMatchType - (any)
#   #   keywords - AdCenterWrapper::ArrayOfstring
#   #   languageAndRegion - (any)
#   class KeywordPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :adType
#     attr_accessor :bidMatchType
#     attr_accessor :cashback
#     attr_accessor :deliveredMatchType
#     attr_accessor :keywords
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, adType = nil, bidMatchType = nil, cashback = nil, deliveredMatchType = nil, keywords = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @adType = adType
#       @bidMatchType = bidMatchType
#       @cashback = cashback
#       @deliveredMatchType = deliveredMatchType
#       @keywords = keywords
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfDestinationUrlPerformanceReportColumn
#   class ArrayOfDestinationUrlPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportFilter
#   #   adDistribution - (any)
#   #   languageAndRegion - (any)
#   class DestinationUrlPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfTacticChannelReportColumn
#   class ArrayOfTacticChannelReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TacticChannelReportFilter
#   #   channelIds - AdCenterWrapper::ArrayOflong
#   #   tacticIds - AdCenterWrapper::ArrayOflong
#   #   thirdPartyAdGroupIds - AdCenterWrapper::ArrayOflong
#   #   thirdPartyCampaignIds - AdCenterWrapper::ArrayOflong
#   class TacticChannelReportFilter
#     attr_accessor :channelIds
#     attr_accessor :tacticIds
#     attr_accessor :thirdPartyAdGroupIds
#     attr_accessor :thirdPartyCampaignIds
# 
#     def initialize(channelIds = nil, tacticIds = nil, thirdPartyAdGroupIds = nil, thirdPartyCampaignIds = nil)
#       @channelIds = channelIds
#       @tacticIds = tacticIds
#       @thirdPartyAdGroupIds = thirdPartyAdGroupIds
#       @thirdPartyCampaignIds = thirdPartyCampaignIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAccountPerformanceReportColumn
#   class ArrayOfAccountPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountPerformanceReportFilter
#   #   adDistribution - (any)
#   #   deviceType - (any)
#   class AccountPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :deviceType
# 
#     def initialize(adDistribution = nil, deviceType = nil)
#       @adDistribution = adDistribution
#       @deviceType = deviceType
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountReportScope
#   #   accountIds - AdCenterWrapper::ArrayOflong
#   class AccountReportScope
#     attr_accessor :accountIds
# 
#     def initialize(accountIds = nil)
#       @accountIds = accountIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfCampaignPerformanceReportColumn
#   class ArrayOfCampaignPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignPerformanceReportFilter
#   #   adDistribution - (any)
#   #   deviceType - (any)
#   #   status - (any)
#   class CampaignPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :deviceType
#     attr_accessor :status
# 
#     def initialize(adDistribution = nil, deviceType = nil, status = nil)
#       @adDistribution = adDistribution
#       @deviceType = deviceType
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountThroughCampaignReportScope
#   #   accountIds - AdCenterWrapper::ArrayOflong
#   #   campaigns - AdCenterWrapper::ArrayOfCampaignReportScope
#   class AccountThroughCampaignReportScope
#     attr_accessor :accountIds
#     attr_accessor :campaigns
# 
#     def initialize(accountIds = nil, campaigns = nil)
#       @accountIds = accountIds
#       @campaigns = campaigns
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdGroupPerformanceReportColumn
#   class ArrayOfAdGroupPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportFilter
#   #   adDistribution - (any)
#   #   deviceType - (any)
#   #   languageAndRegion - (any)
#   #   status - (any)
#   class AdGroupPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :deviceType
#     attr_accessor :languageAndRegion
#     attr_accessor :status
# 
#     def initialize(adDistribution = nil, deviceType = nil, languageAndRegion = nil, status = nil)
#       @adDistribution = adDistribution
#       @deviceType = deviceType
#       @languageAndRegion = languageAndRegion
#       @status = status
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAdPerformanceReportColumn
#   class ArrayOfAdPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdPerformanceReportFilter
#   #   adDistribution - (any)
#   #   adType - (any)
#   #   languageAndRegion - (any)
#   class AdPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :adType
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, adType = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @adType = adType
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBudgetSummaryReportColumn
#   class ArrayOfBudgetSummaryReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BudgetSummaryReportTime
#   #   customDateRangeEnd - AdCenterWrapper::Date
#   #   customDateRangeStart - AdCenterWrapper::Date
#   #   predefinedTime - AdCenterWrapper::BudgetSummaryReportTimePeriod
#   class BudgetSummaryReportTime
#     attr_accessor :customDateRangeEnd
#     attr_accessor :customDateRangeStart
#     attr_accessor :predefinedTime
# 
#     def initialize(customDateRangeEnd = nil, customDateRangeStart = nil, predefinedTime = nil)
#       @customDateRangeEnd = customDateRangeEnd
#       @customDateRangeStart = customDateRangeStart
#       @predefinedTime = predefinedTime
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfAgeGenderDemographicReportColumn
#   class ArrayOfAgeGenderDemographicReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportFilter
#   #   adDistribution - (any)
#   #   languageAndRegion - (any)
#   class AgeGenderDemographicReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfMetroAreaDemographicReportColumn
#   class ArrayOfMetroAreaDemographicReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportFilter
#   #   adDistribution - (any)
#   #   country - (any)
#   #   languageAndRegion - (any)
#   class MetroAreaDemographicReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :country
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, country = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @country = country
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfPublisherUsagePerformanceReportColumn
#   class ArrayOfPublisherUsagePerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportFilter
#   #   adDistribution - (any)
#   #   languageAndRegion - (any)
#   class PublisherUsagePerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSitePerformanceReportColumn
#   class ArrayOfSitePerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SitePerformanceReportFilter
#   #   adDistribution - (any)
#   #   adType - (any)
#   #   deliveredMatchType - (any)
#   #   languageAndRegion - (any)
#   #   siteIds - AdCenterWrapper::ArrayOflong
#   class SitePerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :adType
#     attr_accessor :deliveredMatchType
#     attr_accessor :languageAndRegion
#     attr_accessor :siteIds
# 
#     def initialize(adDistribution = nil, adType = nil, deliveredMatchType = nil, languageAndRegion = nil, siteIds = nil)
#       @adDistribution = adDistribution
#       @adType = adType
#       @deliveredMatchType = deliveredMatchType
#       @languageAndRegion = languageAndRegion
#       @siteIds = siteIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBehavioralTargetReportColumn
#   class ArrayOfBehavioralTargetReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralTargetReportFilter
#   #   adDistribution - (any)
#   #   behavioralIds - AdCenterWrapper::ArrayOflong
#   #   languageAndRegion - (any)
#   class BehavioralTargetReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :behavioralIds
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, behavioralIds = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @behavioralIds = behavioralIds
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBehavioralPerformanceReportColumn
#   class ArrayOfBehavioralPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportFilter
#   #   adDistribution - (any)
#   #   adType - (any)
#   #   behavioralIds - AdCenterWrapper::ArrayOflong
#   #   deliveredMatchType - (any)
#   #   languageAndRegion - (any)
#   class BehavioralPerformanceReportFilter
#     attr_accessor :adDistribution
#     attr_accessor :adType
#     attr_accessor :behavioralIds
#     attr_accessor :deliveredMatchType
#     attr_accessor :languageAndRegion
# 
#     def initialize(adDistribution = nil, adType = nil, behavioralIds = nil, deliveredMatchType = nil, languageAndRegion = nil)
#       @adDistribution = adDistribution
#       @adType = adType
#       @behavioralIds = behavioralIds
#       @deliveredMatchType = deliveredMatchType
#       @languageAndRegion = languageAndRegion
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSearchQueryPerformanceReportColumn
#   class ArrayOfSearchQueryPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportFilter
#   #   adStatus - (any)
#   #   adType - (any)
#   #   campaignStatus - (any)
#   #   deliveredMatchType - (any)
#   #   languageAndRegion - (any)
#   #   searchQueries - AdCenterWrapper::ArrayOfstring
#   class SearchQueryPerformanceReportFilter
#     attr_accessor :adStatus
#     attr_accessor :adType
#     attr_accessor :campaignStatus
#     attr_accessor :deliveredMatchType
#     attr_accessor :languageAndRegion
#     attr_accessor :searchQueries
# 
#     def initialize(adStatus = nil, adType = nil, campaignStatus = nil, deliveredMatchType = nil, languageAndRegion = nil, searchQueries = nil)
#       @adStatus = adStatus
#       @adType = adType
#       @campaignStatus = campaignStatus
#       @deliveredMatchType = deliveredMatchType
#       @languageAndRegion = languageAndRegion
#       @searchQueries = searchQueries
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfConversionPerformanceReportColumn
#   class ArrayOfConversionPerformanceReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ConversionPerformanceReportFilter
#   #   keywords - AdCenterWrapper::ArrayOfstring
#   class ConversionPerformanceReportFilter
#     attr_accessor :keywords
# 
#     def initialize(keywords = nil)
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfGoalsAndFunnelsReportColumn
#   class ArrayOfGoalsAndFunnelsReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportFilter
#   #   goalIds - AdCenterWrapper::ArrayOflong
#   class GoalsAndFunnelsReportFilter
#     attr_accessor :goalIds
# 
#     def initialize(goalIds = nil)
#       @goalIds = goalIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfTrafficSourcesReportColumn
#   class ArrayOfTrafficSourcesReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TrafficSourcesReportFilter
#   #   goalIds - AdCenterWrapper::ArrayOflong
#   class TrafficSourcesReportFilter
#     attr_accessor :goalIds
# 
#     def initialize(goalIds = nil)
#       @goalIds = goalIds
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfSegmentationReportColumn
#   class ArrayOfSegmentationReportColumn < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SegmentationReportFilter
#   #   ageGroup - (any)
#   #   country - (any)
#   #   gender - (any)
#   #   goalIds - AdCenterWrapper::ArrayOflong
#   #   keywords - AdCenterWrapper::ArrayOfstring
#   class SegmentationReportFilter
#     attr_accessor :ageGroup
#     attr_accessor :country
#     attr_accessor :gender
#     attr_accessor :goalIds
#     attr_accessor :keywords
# 
#     def initialize(ageGroup = nil, country = nil, gender = nil, goalIds = nil, keywords = nil)
#       @ageGroup = ageGroup
#       @country = country
#       @gender = gender
#       @goalIds = goalIds
#       @keywords = keywords
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfBatchError
#   class ArrayOfBatchError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BatchError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   index - SOAP::SOAPInt
#   #   message - SOAP::SOAPString
#   class BatchError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :errorCode
#     attr_accessor :index
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, errorCode = nil, index = nil, message = nil)
#       @code = code
#       @details = details
#       @errorCode = errorCode
#       @index = index
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ArrayOfOperationError
#   class ArrayOfOperationError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/v7}OperationError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class OperationError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, errorCode = nil, message = nil)
#       @code = code
#       @details = details
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportRequestStatus
#   #   reportDownloadUrl - SOAP::SOAPString
#   #   status - AdCenterWrapper::ReportRequestStatusType
#   class ReportRequestStatus
#     attr_accessor :reportDownloadUrl
#     attr_accessor :status
# 
#     def initialize(reportDownloadUrl = nil, status = nil)
#       @reportDownloadUrl = reportDownloadUrl
#       @status = status
#     end
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
#   class ArrayOflong < ::Array
#   end
# 
#   # {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
#   class ArrayOfstring < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class ApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :batchErrors
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, batchErrors = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @batchErrors = batchErrors
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportFormat
#   class ReportFormat < ::String
#     Csv = ReportFormat.new("Csv")
#     Tsv = ReportFormat.new("Tsv")
#     Xml = ReportFormat.new("Xml")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportLanguage
#   class ReportLanguage < ::String
#     English = ReportLanguage.new("English")
#     French = ReportLanguage.new("French")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}NonHourlyReportAggregation
#   class NonHourlyReportAggregation < ::String
#     Daily = NonHourlyReportAggregation.new("Daily")
#     Monthly = NonHourlyReportAggregation.new("Monthly")
#     Summary = NonHourlyReportAggregation.new("Summary")
#     Weekly = NonHourlyReportAggregation.new("Weekly")
#     Yearly = NonHourlyReportAggregation.new("Yearly")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportColumn
#   class AdDynamicTextPerformanceReportColumn < ::String
#     AccountName = AdDynamicTextPerformanceReportColumn.new("AccountName")
#     AccountNumber = AdDynamicTextPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = AdDynamicTextPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = AdDynamicTextPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = AdDynamicTextPerformanceReportColumn.new("AdGroupName")
#     AdId = AdDynamicTextPerformanceReportColumn.new("AdId")
#     AdTitle = AdDynamicTextPerformanceReportColumn.new("AdTitle")
#     AdType = AdDynamicTextPerformanceReportColumn.new("AdType")
#     AverageCpc = AdDynamicTextPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = AdDynamicTextPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = AdDynamicTextPerformanceReportColumn.new("AveragePosition")
#     Clicks = AdDynamicTextPerformanceReportColumn.new("Clicks")
#     ConversionRate = AdDynamicTextPerformanceReportColumn.new("ConversionRate")
#     Conversions = AdDynamicTextPerformanceReportColumn.new("Conversions")
#     CostPerConversion = AdDynamicTextPerformanceReportColumn.new("CostPerConversion")
#     Ctr = AdDynamicTextPerformanceReportColumn.new("Ctr")
#     CurrencyCode = AdDynamicTextPerformanceReportColumn.new("CurrencyCode")
#     DestinationUrl = AdDynamicTextPerformanceReportColumn.new("DestinationUrl")
#     Impressions = AdDynamicTextPerformanceReportColumn.new("Impressions")
#     Keyword = AdDynamicTextPerformanceReportColumn.new("Keyword")
#     LanguageAndRegion = AdDynamicTextPerformanceReportColumn.new("LanguageAndRegion")
#     Param1 = AdDynamicTextPerformanceReportColumn.new("Param1")
#     Param2 = AdDynamicTextPerformanceReportColumn.new("Param2")
#     Param3 = AdDynamicTextPerformanceReportColumn.new("Param3")
#     PricingModel = AdDynamicTextPerformanceReportColumn.new("PricingModel")
#     Spend = AdDynamicTextPerformanceReportColumn.new("Spend")
#     TimePeriod = AdDynamicTextPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdDistributionReportFilter
#   #   contains list of AdDistributionReportFilter::*
#   class AdDistributionReportFilter < ::Array
#     Content = "Content"
#     Search = "Search"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdTypeReportFilter
#   #   contains list of AdTypeReportFilter::*
#   class AdTypeReportFilter < ::Array
#     Image = "Image"
#     Mobile = "Mobile"
#     RichMedia = "RichMedia"
#     Text = "Text"
#     ThirdPartyCreative = "ThirdPartyCreative"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}LanguageAndRegionReportFilter
#   #   contains list of LanguageAndRegionReportFilter::*
#   class LanguageAndRegionReportFilter < ::Array
#     EnglishCanada = "EnglishCanada"
#     France = "France"
#     FrenchCanada = "FrenchCanada"
#     Singapore = "Singapore"
#     UnitedKingdom = "UnitedKingdom"
#     UnitedStates = "UnitedStates"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportTimePeriod
#   class ReportTimePeriod < ::String
#     LastFourWeeks = ReportTimePeriod.new("LastFourWeeks")
#     LastMonth = ReportTimePeriod.new("LastMonth")
#     LastSevenDays = ReportTimePeriod.new("LastSevenDays")
#     LastSixMonths = ReportTimePeriod.new("LastSixMonths")
#     LastThreeMonths = ReportTimePeriod.new("LastThreeMonths")
#     LastWeek = ReportTimePeriod.new("LastWeek")
#     LastYear = ReportTimePeriod.new("LastYear")
#     ThisMonth = ReportTimePeriod.new("ThisMonth")
#     ThisWeek = ReportTimePeriod.new("ThisWeek")
#     ThisYear = ReportTimePeriod.new("ThisYear")
#     Today = ReportTimePeriod.new("Today")
#     Yesterday = ReportTimePeriod.new("Yesterday")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportAggregation
#   class ReportAggregation < ::String
#     Daily = ReportAggregation.new("Daily")
#     Hourly = ReportAggregation.new("Hourly")
#     Monthly = ReportAggregation.new("Monthly")
#     Summary = ReportAggregation.new("Summary")
#     Weekly = ReportAggregation.new("Weekly")
#     Yearly = ReportAggregation.new("Yearly")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}KeywordPerformanceReportColumn
#   class KeywordPerformanceReportColumn < ::String
#     AccountId = KeywordPerformanceReportColumn.new("AccountId")
#     AccountName = KeywordPerformanceReportColumn.new("AccountName")
#     AccountNumber = KeywordPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = KeywordPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = KeywordPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = KeywordPerformanceReportColumn.new("AdGroupName")
#     AdId = KeywordPerformanceReportColumn.new("AdId")
#     AdType = KeywordPerformanceReportColumn.new("AdType")
#     AverageCpc = KeywordPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = KeywordPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = KeywordPerformanceReportColumn.new("AveragePosition")
#     BidMatchType = KeywordPerformanceReportColumn.new("BidMatchType")
#     CampaignId = KeywordPerformanceReportColumn.new("CampaignId")
#     CampaignName = KeywordPerformanceReportColumn.new("CampaignName")
#     Cashback = KeywordPerformanceReportColumn.new("Cashback")
#     Clicks = KeywordPerformanceReportColumn.new("Clicks")
#     ConversionRate = KeywordPerformanceReportColumn.new("ConversionRate")
#     Conversions = KeywordPerformanceReportColumn.new("Conversions")
#     CostPerConversion = KeywordPerformanceReportColumn.new("CostPerConversion")
#     Ctr = KeywordPerformanceReportColumn.new("Ctr")
#     CurrencyCode = KeywordPerformanceReportColumn.new("CurrencyCode")
#     CurrentMaxCpc = KeywordPerformanceReportColumn.new("CurrentMaxCpc")
#     DestinationUrl = KeywordPerformanceReportColumn.new("DestinationUrl")
#     Impressions = KeywordPerformanceReportColumn.new("Impressions")
#     Keyword = KeywordPerformanceReportColumn.new("Keyword")
#     KeywordId = KeywordPerformanceReportColumn.new("KeywordId")
#     LanguageAndRegion = KeywordPerformanceReportColumn.new("LanguageAndRegion")
#     MatchType = KeywordPerformanceReportColumn.new("MatchType")
#     PricingModel = KeywordPerformanceReportColumn.new("PricingModel")
#     Spend = KeywordPerformanceReportColumn.new("Spend")
#     TimePeriod = KeywordPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BidMatchTypeReportFilter
#   #   contains list of BidMatchTypeReportFilter::*
#   class BidMatchTypeReportFilter < ::Array
#     Broad = "Broad"
#     Content = "Content"
#     Exact = "Exact"
#     Phrase = "Phrase"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CashbackReportFilter
#   #   contains list of CashbackReportFilter::*
#   class CashbackReportFilter < ::Array
#     Enabled = "Enabled"
#     NotEnabled = "NotEnabled"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeliveredMatchTypeReportFilter
#   #   contains list of DeliveredMatchTypeReportFilter::*
#   class DeliveredMatchTypeReportFilter < ::Array
#     Broad = "Broad"
#     Content = "Content"
#     Exact = "Exact"
#     Phrase = "Phrase"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportColumn
#   class DestinationUrlPerformanceReportColumn < ::String
#     AccountName = DestinationUrlPerformanceReportColumn.new("AccountName")
#     AccountNumber = DestinationUrlPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = DestinationUrlPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = DestinationUrlPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = DestinationUrlPerformanceReportColumn.new("AdGroupName")
#     AdId = DestinationUrlPerformanceReportColumn.new("AdId")
#     AverageCpc = DestinationUrlPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = DestinationUrlPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = DestinationUrlPerformanceReportColumn.new("AveragePosition")
#     CampaignId = DestinationUrlPerformanceReportColumn.new("CampaignId")
#     CampaignName = DestinationUrlPerformanceReportColumn.new("CampaignName")
#     Clicks = DestinationUrlPerformanceReportColumn.new("Clicks")
#     ConversionRate = DestinationUrlPerformanceReportColumn.new("ConversionRate")
#     Conversions = DestinationUrlPerformanceReportColumn.new("Conversions")
#     CostPerConversion = DestinationUrlPerformanceReportColumn.new("CostPerConversion")
#     Ctr = DestinationUrlPerformanceReportColumn.new("Ctr")
#     CurrencyCode = DestinationUrlPerformanceReportColumn.new("CurrencyCode")
#     DestinationUrl = DestinationUrlPerformanceReportColumn.new("DestinationUrl")
#     Impressions = DestinationUrlPerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = DestinationUrlPerformanceReportColumn.new("LanguageAndRegion")
#     PricingModel = DestinationUrlPerformanceReportColumn.new("PricingModel")
#     Spend = DestinationUrlPerformanceReportColumn.new("Spend")
#     TimePeriod = DestinationUrlPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TacticChannelReportColumn
#   class TacticChannelReportColumn < ::String
#     AccountId = TacticChannelReportColumn.new("AccountId")
#     AccountName = TacticChannelReportColumn.new("AccountName")
#     AccountNumber = TacticChannelReportColumn.new("AccountNumber")
#     AdGroupId = TacticChannelReportColumn.new("AdGroupId")
#     AdGroupName = TacticChannelReportColumn.new("AdGroupName")
#     Assists = TacticChannelReportColumn.new("Assists")
#     CampaignId = TacticChannelReportColumn.new("CampaignId")
#     CampaignName = TacticChannelReportColumn.new("CampaignName")
#     Channel = TacticChannelReportColumn.new("Channel")
#     Conversions = TacticChannelReportColumn.new("Conversions")
#     FunnelConversionRate = TacticChannelReportColumn.new("FunnelConversionRate")
#     Goal = TacticChannelReportColumn.new("Goal")
#     Keyword = TacticChannelReportColumn.new("Keyword")
#     KeywordId = TacticChannelReportColumn.new("KeywordId")
#     ReturnOnAdSpend = TacticChannelReportColumn.new("ReturnOnAdSpend")
#     Revenue = TacticChannelReportColumn.new("Revenue")
#     Spend = TacticChannelReportColumn.new("Spend")
#     Step1Count = TacticChannelReportColumn.new("Step1Count")
#     Step2Count = TacticChannelReportColumn.new("Step2Count")
#     Step3Count = TacticChannelReportColumn.new("Step3Count")
#     Step4Count = TacticChannelReportColumn.new("Step4Count")
#     Step5Count = TacticChannelReportColumn.new("Step5Count")
#     Tactic = TacticChannelReportColumn.new("Tactic")
#     ThirdPartyAdGroup = TacticChannelReportColumn.new("ThirdPartyAdGroup")
#     ThirdPartyCampaign = TacticChannelReportColumn.new("ThirdPartyCampaign")
#     ThirdPartyTerm = TacticChannelReportColumn.new("ThirdPartyTerm")
#     TimePeriod = TacticChannelReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AccountPerformanceReportColumn
#   class AccountPerformanceReportColumn < ::String
#     AccountName = AccountPerformanceReportColumn.new("AccountName")
#     AccountNumber = AccountPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = AccountPerformanceReportColumn.new("AdDistribution")
#     AverageCpc = AccountPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = AccountPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = AccountPerformanceReportColumn.new("AveragePosition")
#     Clicks = AccountPerformanceReportColumn.new("Clicks")
#     ConversionRate = AccountPerformanceReportColumn.new("ConversionRate")
#     Conversions = AccountPerformanceReportColumn.new("Conversions")
#     CostPerConversion = AccountPerformanceReportColumn.new("CostPerConversion")
#     Ctr = AccountPerformanceReportColumn.new("Ctr")
#     CurrencyCode = AccountPerformanceReportColumn.new("CurrencyCode")
#     DeviceType = AccountPerformanceReportColumn.new("DeviceType")
#     Impressions = AccountPerformanceReportColumn.new("Impressions")
#     LowQualityClicks = AccountPerformanceReportColumn.new("LowQualityClicks")
#     LowQualityClicksPercent = AccountPerformanceReportColumn.new("LowQualityClicksPercent")
#     LowQualityConversionRate = AccountPerformanceReportColumn.new("LowQualityConversionRate")
#     LowQualityConversions = AccountPerformanceReportColumn.new("LowQualityConversions")
#     LowQualityImpressions = AccountPerformanceReportColumn.new("LowQualityImpressions")
#     LowQualityImpressionsPercent = AccountPerformanceReportColumn.new("LowQualityImpressionsPercent")
#     Spend = AccountPerformanceReportColumn.new("Spend")
#     TimePeriod = AccountPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}DeviceTypeReportFilter
#   #   contains list of DeviceTypeReportFilter::*
#   class DeviceTypeReportFilter < ::Array
#     Computer = "Computer"
#     NonSmartPhone = "NonSmartPhone"
#     SmartPhone = "SmartPhone"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignPerformanceReportColumn
#   class CampaignPerformanceReportColumn < ::String
#     AccountName = CampaignPerformanceReportColumn.new("AccountName")
#     AccountNumber = CampaignPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = CampaignPerformanceReportColumn.new("AdDistribution")
#     AverageCpc = CampaignPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = CampaignPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = CampaignPerformanceReportColumn.new("AveragePosition")
#     CampaignId = CampaignPerformanceReportColumn.new("CampaignId")
#     CampaignName = CampaignPerformanceReportColumn.new("CampaignName")
#     Clicks = CampaignPerformanceReportColumn.new("Clicks")
#     ConversionRate = CampaignPerformanceReportColumn.new("ConversionRate")
#     Conversions = CampaignPerformanceReportColumn.new("Conversions")
#     CostPerConversion = CampaignPerformanceReportColumn.new("CostPerConversion")
#     Ctr = CampaignPerformanceReportColumn.new("Ctr")
#     CurrencyCode = CampaignPerformanceReportColumn.new("CurrencyCode")
#     DeviceType = CampaignPerformanceReportColumn.new("DeviceType")
#     Impressions = CampaignPerformanceReportColumn.new("Impressions")
#     LowQualityClicks = CampaignPerformanceReportColumn.new("LowQualityClicks")
#     LowQualityClicksPercent = CampaignPerformanceReportColumn.new("LowQualityClicksPercent")
#     LowQualityConversionRate = CampaignPerformanceReportColumn.new("LowQualityConversionRate")
#     LowQualityConversions = CampaignPerformanceReportColumn.new("LowQualityConversions")
#     LowQualityImpressions = CampaignPerformanceReportColumn.new("LowQualityImpressions")
#     LowQualityImpressionsPercent = CampaignPerformanceReportColumn.new("LowQualityImpressionsPercent")
#     Spend = CampaignPerformanceReportColumn.new("Spend")
#     Status = CampaignPerformanceReportColumn.new("Status")
#     TimePeriod = CampaignPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CampaignStatusReportFilter
#   #   contains list of CampaignStatusReportFilter::*
#   class CampaignStatusReportFilter < ::Array
#     Active = "Active"
#     BudgetPaused = "BudgetPaused"
#     Cancelled = "Cancelled"
#     Deleted = "Deleted"
#     Paused = "Paused"
#     Submitted = "Submitted"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportColumn
#   class AdGroupPerformanceReportColumn < ::String
#     AccountName = AdGroupPerformanceReportColumn.new("AccountName")
#     AccountNumber = AdGroupPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = AdGroupPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = AdGroupPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = AdGroupPerformanceReportColumn.new("AdGroupName")
#     AverageCpc = AdGroupPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = AdGroupPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = AdGroupPerformanceReportColumn.new("AveragePosition")
#     CampaignId = AdGroupPerformanceReportColumn.new("CampaignId")
#     CampaignName = AdGroupPerformanceReportColumn.new("CampaignName")
#     Clicks = AdGroupPerformanceReportColumn.new("Clicks")
#     ConversionRate = AdGroupPerformanceReportColumn.new("ConversionRate")
#     Conversions = AdGroupPerformanceReportColumn.new("Conversions")
#     CostPerConversion = AdGroupPerformanceReportColumn.new("CostPerConversion")
#     Ctr = AdGroupPerformanceReportColumn.new("Ctr")
#     CurrencyCode = AdGroupPerformanceReportColumn.new("CurrencyCode")
#     DeviceType = AdGroupPerformanceReportColumn.new("DeviceType")
#     Impressions = AdGroupPerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = AdGroupPerformanceReportColumn.new("LanguageAndRegion")
#     PricingModel = AdGroupPerformanceReportColumn.new("PricingModel")
#     Spend = AdGroupPerformanceReportColumn.new("Spend")
#     Status = AdGroupPerformanceReportColumn.new("Status")
#     TimePeriod = AdGroupPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdGroupStatusReportFilter
#   #   contains list of AdGroupStatusReportFilter::*
#   class AdGroupStatusReportFilter < ::Array
#     Active = "Active"
#     Deleted = "Deleted"
#     Draft = "Draft"
#     Expired = "Expired"
#     Paused = "Paused"
#     Submitted = "Submitted"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdPerformanceReportColumn
#   class AdPerformanceReportColumn < ::String
#     AccountName = AdPerformanceReportColumn.new("AccountName")
#     AccountNumber = AdPerformanceReportColumn.new("AccountNumber")
#     AdDescription = AdPerformanceReportColumn.new("AdDescription")
#     AdDistribution = AdPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = AdPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = AdPerformanceReportColumn.new("AdGroupName")
#     AdId = AdPerformanceReportColumn.new("AdId")
#     AdTitle = AdPerformanceReportColumn.new("AdTitle")
#     AdType = AdPerformanceReportColumn.new("AdType")
#     AverageCpc = AdPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = AdPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = AdPerformanceReportColumn.new("AveragePosition")
#     CampaignName = AdPerformanceReportColumn.new("CampaignName")
#     Clicks = AdPerformanceReportColumn.new("Clicks")
#     ConversionRate = AdPerformanceReportColumn.new("ConversionRate")
#     Conversions = AdPerformanceReportColumn.new("Conversions")
#     CostPerConversion = AdPerformanceReportColumn.new("CostPerConversion")
#     Ctr = AdPerformanceReportColumn.new("Ctr")
#     CurrencyCode = AdPerformanceReportColumn.new("CurrencyCode")
#     DestinationUrl = AdPerformanceReportColumn.new("DestinationUrl")
#     Impressions = AdPerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = AdPerformanceReportColumn.new("LanguageAndRegion")
#     PricingModel = AdPerformanceReportColumn.new("PricingModel")
#     Spend = AdPerformanceReportColumn.new("Spend")
#     TimePeriod = AdPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BudgetSummaryReportColumn
#   class BudgetSummaryReportColumn < ::String
#     AccountName = BudgetSummaryReportColumn.new("AccountName")
#     AccountNumber = BudgetSummaryReportColumn.new("AccountNumber")
#     CampaignName = BudgetSummaryReportColumn.new("CampaignName")
#     CurrencyCode = BudgetSummaryReportColumn.new("CurrencyCode")
#     DailySpend = BudgetSummaryReportColumn.new("DailySpend")
#     Date = BudgetSummaryReportColumn.new("Date")
#     MonthToDateSpend = BudgetSummaryReportColumn.new("MonthToDateSpend")
#     MonthlyBudget = BudgetSummaryReportColumn.new("MonthlyBudget")
#     ParticipationRate = BudgetSummaryReportColumn.new("ParticipationRate")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BudgetSummaryReportTimePeriod
#   class BudgetSummaryReportTimePeriod < ::String
#     LastMonth = BudgetSummaryReportTimePeriod.new("LastMonth")
#     LastSevenDays = BudgetSummaryReportTimePeriod.new("LastSevenDays")
#     ThisMonth = BudgetSummaryReportTimePeriod.new("ThisMonth")
#     Today = BudgetSummaryReportTimePeriod.new("Today")
#     Yesterday = BudgetSummaryReportTimePeriod.new("Yesterday")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportColumn
#   class AgeGenderDemographicReportColumn < ::String
#     AccountName = AgeGenderDemographicReportColumn.new("AccountName")
#     AccountNumber = AgeGenderDemographicReportColumn.new("AccountNumber")
#     AdDistribution = AgeGenderDemographicReportColumn.new("AdDistribution")
#     AdGroupName = AgeGenderDemographicReportColumn.new("AdGroupName")
#     AgeGroup = AgeGenderDemographicReportColumn.new("AgeGroup")
#     CampaignName = AgeGenderDemographicReportColumn.new("CampaignName")
#     EstimatedClickPercent = AgeGenderDemographicReportColumn.new("EstimatedClickPercent")
#     EstimatedCtr = AgeGenderDemographicReportColumn.new("EstimatedCtr")
#     EstimatedImpressionPercent = AgeGenderDemographicReportColumn.new("EstimatedImpressionPercent")
#     Gender = AgeGenderDemographicReportColumn.new("Gender")
#     LanguageAndRegion = AgeGenderDemographicReportColumn.new("LanguageAndRegion")
#     TimePeriod = AgeGenderDemographicReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportColumn
#   class MetroAreaDemographicReportColumn < ::String
#     AccountName = MetroAreaDemographicReportColumn.new("AccountName")
#     AccountNumber = MetroAreaDemographicReportColumn.new("AccountNumber")
#     AdDistribution = MetroAreaDemographicReportColumn.new("AdDistribution")
#     AdGroupName = MetroAreaDemographicReportColumn.new("AdGroupName")
#     AverageCpc = MetroAreaDemographicReportColumn.new("AverageCpc")
#     AverageCpm = MetroAreaDemographicReportColumn.new("AverageCpm")
#     AveragePosition = MetroAreaDemographicReportColumn.new("AveragePosition")
#     CampaignName = MetroAreaDemographicReportColumn.new("CampaignName")
#     Clicks = MetroAreaDemographicReportColumn.new("Clicks")
#     Country = MetroAreaDemographicReportColumn.new("Country")
#     Ctr = MetroAreaDemographicReportColumn.new("Ctr")
#     CurrencyCode = MetroAreaDemographicReportColumn.new("CurrencyCode")
#     Impressions = MetroAreaDemographicReportColumn.new("Impressions")
#     LanguageAndRegion = MetroAreaDemographicReportColumn.new("LanguageAndRegion")
#     MetroArea = MetroAreaDemographicReportColumn.new("MetroArea")
#     Spend = MetroAreaDemographicReportColumn.new("Spend")
#     State = MetroAreaDemographicReportColumn.new("State")
#     TimePeriod = MetroAreaDemographicReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}CountryReportFilter
#   #   contains list of CountryReportFilter::*
#   class CountryReportFilter < ::Array
#     Canada = "Canada"
#     France = "France"
#     Singapore = "Singapore"
#     UnitedKingdom = "UnitedKingdom"
#     UnitedStates = "UnitedStates"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportColumn
#   class PublisherUsagePerformanceReportColumn < ::String
#     AccountId = PublisherUsagePerformanceReportColumn.new("AccountId")
#     AccountName = PublisherUsagePerformanceReportColumn.new("AccountName")
#     AccountNumber = PublisherUsagePerformanceReportColumn.new("AccountNumber")
#     AdDistribution = PublisherUsagePerformanceReportColumn.new("AdDistribution")
#     AdGroupId = PublisherUsagePerformanceReportColumn.new("AdGroupId")
#     AdGroupName = PublisherUsagePerformanceReportColumn.new("AdGroupName")
#     AverageCpc = PublisherUsagePerformanceReportColumn.new("AverageCpc")
#     AverageCpm = PublisherUsagePerformanceReportColumn.new("AverageCpm")
#     AveragePosition = PublisherUsagePerformanceReportColumn.new("AveragePosition")
#     CampaignId = PublisherUsagePerformanceReportColumn.new("CampaignId")
#     CampaignName = PublisherUsagePerformanceReportColumn.new("CampaignName")
#     Clicks = PublisherUsagePerformanceReportColumn.new("Clicks")
#     ConversionRate = PublisherUsagePerformanceReportColumn.new("ConversionRate")
#     Conversions = PublisherUsagePerformanceReportColumn.new("Conversions")
#     CostPerConversion = PublisherUsagePerformanceReportColumn.new("CostPerConversion")
#     Ctr = PublisherUsagePerformanceReportColumn.new("Ctr")
#     CurrencyCode = PublisherUsagePerformanceReportColumn.new("CurrencyCode")
#     Impressions = PublisherUsagePerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = PublisherUsagePerformanceReportColumn.new("LanguageAndRegion")
#     PricingModel = PublisherUsagePerformanceReportColumn.new("PricingModel")
#     PublisherUrl = PublisherUsagePerformanceReportColumn.new("PublisherUrl")
#     Spend = PublisherUsagePerformanceReportColumn.new("Spend")
#     TimePeriod = PublisherUsagePerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SitePerformanceReportColumn
#   class SitePerformanceReportColumn < ::String
#     AccountId = SitePerformanceReportColumn.new("AccountId")
#     AccountName = SitePerformanceReportColumn.new("AccountName")
#     AccountNumber = SitePerformanceReportColumn.new("AccountNumber")
#     AdDistribution = SitePerformanceReportColumn.new("AdDistribution")
#     AdGroupId = SitePerformanceReportColumn.new("AdGroupId")
#     AdGroupName = SitePerformanceReportColumn.new("AdGroupName")
#     AdId = SitePerformanceReportColumn.new("AdId")
#     AdType = SitePerformanceReportColumn.new("AdType")
#     AverageCpc = SitePerformanceReportColumn.new("AverageCpc")
#     AverageCpm = SitePerformanceReportColumn.new("AverageCpm")
#     AveragePosition = SitePerformanceReportColumn.new("AveragePosition")
#     CampaignId = SitePerformanceReportColumn.new("CampaignId")
#     CampaignName = SitePerformanceReportColumn.new("CampaignName")
#     Clicks = SitePerformanceReportColumn.new("Clicks")
#     ConversionRate = SitePerformanceReportColumn.new("ConversionRate")
#     Conversions = SitePerformanceReportColumn.new("Conversions")
#     CostPerConversion = SitePerformanceReportColumn.new("CostPerConversion")
#     Ctr = SitePerformanceReportColumn.new("Ctr")
#     CurrencyCode = SitePerformanceReportColumn.new("CurrencyCode")
#     CurrentMaxCpc = SitePerformanceReportColumn.new("CurrentMaxCpc")
#     DestinationUrl = SitePerformanceReportColumn.new("DestinationUrl")
#     Impressions = SitePerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = SitePerformanceReportColumn.new("LanguageAndRegion")
#     MatchType = SitePerformanceReportColumn.new("MatchType")
#     PricingModel = SitePerformanceReportColumn.new("PricingModel")
#     Site = SitePerformanceReportColumn.new("Site")
#     SiteId = SitePerformanceReportColumn.new("SiteId")
#     Spend = SitePerformanceReportColumn.new("Spend")
#     TimePeriod = SitePerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralTargetReportColumn
#   class BehavioralTargetReportColumn < ::String
#     AccountId = BehavioralTargetReportColumn.new("AccountId")
#     AccountName = BehavioralTargetReportColumn.new("AccountName")
#     AccountNumber = BehavioralTargetReportColumn.new("AccountNumber")
#     AdDistribution = BehavioralTargetReportColumn.new("AdDistribution")
#     AdGroupId = BehavioralTargetReportColumn.new("AdGroupId")
#     AdGroupName = BehavioralTargetReportColumn.new("AdGroupName")
#     AverageCpc = BehavioralTargetReportColumn.new("AverageCpc")
#     AverageCpm = BehavioralTargetReportColumn.new("AverageCpm")
#     AveragePosition = BehavioralTargetReportColumn.new("AveragePosition")
#     BehavioralId = BehavioralTargetReportColumn.new("BehavioralId")
#     CampaignId = BehavioralTargetReportColumn.new("CampaignId")
#     CampaignName = BehavioralTargetReportColumn.new("CampaignName")
#     Clicks = BehavioralTargetReportColumn.new("Clicks")
#     Ctr = BehavioralTargetReportColumn.new("Ctr")
#     CurrencyCode = BehavioralTargetReportColumn.new("CurrencyCode")
#     Impressions = BehavioralTargetReportColumn.new("Impressions")
#     LanguageAndRegion = BehavioralTargetReportColumn.new("LanguageAndRegion")
#     PricingModel = BehavioralTargetReportColumn.new("PricingModel")
#     Spend = BehavioralTargetReportColumn.new("Spend")
#     TimePeriod = BehavioralTargetReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportColumn
#   class BehavioralPerformanceReportColumn < ::String
#     AccountId = BehavioralPerformanceReportColumn.new("AccountId")
#     AccountName = BehavioralPerformanceReportColumn.new("AccountName")
#     AccountNumber = BehavioralPerformanceReportColumn.new("AccountNumber")
#     AdDistribution = BehavioralPerformanceReportColumn.new("AdDistribution")
#     AdGroupId = BehavioralPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = BehavioralPerformanceReportColumn.new("AdGroupName")
#     AdId = BehavioralPerformanceReportColumn.new("AdId")
#     AdType = BehavioralPerformanceReportColumn.new("AdType")
#     AverageCpc = BehavioralPerformanceReportColumn.new("AverageCpc")
#     AverageCpm = BehavioralPerformanceReportColumn.new("AverageCpm")
#     AveragePosition = BehavioralPerformanceReportColumn.new("AveragePosition")
#     BehavioralId = BehavioralPerformanceReportColumn.new("BehavioralId")
#     BehavioralName = BehavioralPerformanceReportColumn.new("BehavioralName")
#     CampaignId = BehavioralPerformanceReportColumn.new("CampaignId")
#     CampaignName = BehavioralPerformanceReportColumn.new("CampaignName")
#     Clicks = BehavioralPerformanceReportColumn.new("Clicks")
#     ConversionRate = BehavioralPerformanceReportColumn.new("ConversionRate")
#     Conversions = BehavioralPerformanceReportColumn.new("Conversions")
#     CostPerConversion = BehavioralPerformanceReportColumn.new("CostPerConversion")
#     Ctr = BehavioralPerformanceReportColumn.new("Ctr")
#     CurrencyCode = BehavioralPerformanceReportColumn.new("CurrencyCode")
#     CurrentMaxCpc = BehavioralPerformanceReportColumn.new("CurrentMaxCpc")
#     DestinationUrl = BehavioralPerformanceReportColumn.new("DestinationUrl")
#     Impressions = BehavioralPerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = BehavioralPerformanceReportColumn.new("LanguageAndRegion")
#     MatchType = BehavioralPerformanceReportColumn.new("MatchType")
#     PricingModel = BehavioralPerformanceReportColumn.new("PricingModel")
#     Spend = BehavioralPerformanceReportColumn.new("Spend")
#     TimePeriod = BehavioralPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SearchQueryReportAggregation
#   class SearchQueryReportAggregation < ::String
#     Daily = SearchQueryReportAggregation.new("Daily")
#     Hourly = SearchQueryReportAggregation.new("Hourly")
#     Monthly = SearchQueryReportAggregation.new("Monthly")
#     Summary = SearchQueryReportAggregation.new("Summary")
#     Weekly = SearchQueryReportAggregation.new("Weekly")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportColumn
#   class SearchQueryPerformanceReportColumn < ::String
#     AccountId = SearchQueryPerformanceReportColumn.new("AccountId")
#     AccountName = SearchQueryPerformanceReportColumn.new("AccountName")
#     AccountNumber = SearchQueryPerformanceReportColumn.new("AccountNumber")
#     AdGroupId = SearchQueryPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = SearchQueryPerformanceReportColumn.new("AdGroupName")
#     AdId = SearchQueryPerformanceReportColumn.new("AdId")
#     AdStatus = SearchQueryPerformanceReportColumn.new("AdStatus")
#     AdType = SearchQueryPerformanceReportColumn.new("AdType")
#     AverageCpc = SearchQueryPerformanceReportColumn.new("AverageCpc")
#     AveragePosition = SearchQueryPerformanceReportColumn.new("AveragePosition")
#     CampaignId = SearchQueryPerformanceReportColumn.new("CampaignId")
#     CampaignName = SearchQueryPerformanceReportColumn.new("CampaignName")
#     CampaignStatus = SearchQueryPerformanceReportColumn.new("CampaignStatus")
#     Clicks = SearchQueryPerformanceReportColumn.new("Clicks")
#     Ctr = SearchQueryPerformanceReportColumn.new("Ctr")
#     DestinationUrl = SearchQueryPerformanceReportColumn.new("DestinationUrl")
#     Impressions = SearchQueryPerformanceReportColumn.new("Impressions")
#     LanguageAndRegion = SearchQueryPerformanceReportColumn.new("LanguageAndRegion")
#     MatchType = SearchQueryPerformanceReportColumn.new("MatchType")
#     SearchQuery = SearchQueryPerformanceReportColumn.new("SearchQuery")
#     Spend = SearchQueryPerformanceReportColumn.new("Spend")
#     TimePeriod = SearchQueryPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AdStatusReportFilter
#   #   contains list of AdStatusReportFilter::*
#   class AdStatusReportFilter < ::Array
#     Active = "Active"
#     Deleted = "Deleted"
#     Pending = "Pending"
#     Rejected = "Rejected"
#     Submitted = "Submitted"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ConversionPerformanceReportColumn
#   class ConversionPerformanceReportColumn < ::String
#     AccountId = ConversionPerformanceReportColumn.new("AccountId")
#     AccountName = ConversionPerformanceReportColumn.new("AccountName")
#     AccountNumber = ConversionPerformanceReportColumn.new("AccountNumber")
#     AdGroupId = ConversionPerformanceReportColumn.new("AdGroupId")
#     AdGroupName = ConversionPerformanceReportColumn.new("AdGroupName")
#     Assists = ConversionPerformanceReportColumn.new("Assists")
#     CampaignId = ConversionPerformanceReportColumn.new("CampaignId")
#     CampaignName = ConversionPerformanceReportColumn.new("CampaignName")
#     Clicks = ConversionPerformanceReportColumn.new("Clicks")
#     ConversionRate = ConversionPerformanceReportColumn.new("ConversionRate")
#     Conversions = ConversionPerformanceReportColumn.new("Conversions")
#     CostPerAssist = ConversionPerformanceReportColumn.new("CostPerAssist")
#     CostPerConversion = ConversionPerformanceReportColumn.new("CostPerConversion")
#     Ctr = ConversionPerformanceReportColumn.new("Ctr")
#     ExtendedCost = ConversionPerformanceReportColumn.new("ExtendedCost")
#     Impressions = ConversionPerformanceReportColumn.new("Impressions")
#     Keyword = ConversionPerformanceReportColumn.new("Keyword")
#     KeywordId = ConversionPerformanceReportColumn.new("KeywordId")
#     ReturnOnAdSpend = ConversionPerformanceReportColumn.new("ReturnOnAdSpend")
#     Revenue = ConversionPerformanceReportColumn.new("Revenue")
#     RevenuePerAssist = ConversionPerformanceReportColumn.new("RevenuePerAssist")
#     RevenuePerConversion = ConversionPerformanceReportColumn.new("RevenuePerConversion")
#     Spend = ConversionPerformanceReportColumn.new("Spend")
#     TimePeriod = ConversionPerformanceReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportColumn
#   class GoalsAndFunnelsReportColumn < ::String
#     AccountId = GoalsAndFunnelsReportColumn.new("AccountId")
#     AccountName = GoalsAndFunnelsReportColumn.new("AccountName")
#     AccountNumber = GoalsAndFunnelsReportColumn.new("AccountNumber")
#     AdGroupId = GoalsAndFunnelsReportColumn.new("AdGroupId")
#     AdGroupName = GoalsAndFunnelsReportColumn.new("AdGroupName")
#     Assists = GoalsAndFunnelsReportColumn.new("Assists")
#     CampaignId = GoalsAndFunnelsReportColumn.new("CampaignId")
#     CampaignName = GoalsAndFunnelsReportColumn.new("CampaignName")
#     Conversions = GoalsAndFunnelsReportColumn.new("Conversions")
#     ExtendedCost = GoalsAndFunnelsReportColumn.new("ExtendedCost")
#     FunnelConversionRate = GoalsAndFunnelsReportColumn.new("FunnelConversionRate")
#     Goal = GoalsAndFunnelsReportColumn.new("Goal")
#     Keyword = GoalsAndFunnelsReportColumn.new("Keyword")
#     KeywordId = GoalsAndFunnelsReportColumn.new("KeywordId")
#     ReturnOnAdSpend = GoalsAndFunnelsReportColumn.new("ReturnOnAdSpend")
#     Revenue = GoalsAndFunnelsReportColumn.new("Revenue")
#     Spend = GoalsAndFunnelsReportColumn.new("Spend")
#     Step1Count = GoalsAndFunnelsReportColumn.new("Step1Count")
#     Step2Count = GoalsAndFunnelsReportColumn.new("Step2Count")
#     Step3Count = GoalsAndFunnelsReportColumn.new("Step3Count")
#     Step4Count = GoalsAndFunnelsReportColumn.new("Step4Count")
#     Step5Count = GoalsAndFunnelsReportColumn.new("Step5Count")
#     TimePeriod = GoalsAndFunnelsReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}TrafficSourcesReportColumn
#   class TrafficSourcesReportColumn < ::String
#     AccountId = TrafficSourcesReportColumn.new("AccountId")
#     AccountName = TrafficSourcesReportColumn.new("AccountName")
#     AccountNumber = TrafficSourcesReportColumn.new("AccountNumber")
#     Assists = TrafficSourcesReportColumn.new("Assists")
#     Conversions = TrafficSourcesReportColumn.new("Conversions")
#     FunnelConversionRate = TrafficSourcesReportColumn.new("FunnelConversionRate")
#     Goal = TrafficSourcesReportColumn.new("Goal")
#     Revenue = TrafficSourcesReportColumn.new("Revenue")
#     RevenuePerConversion = TrafficSourcesReportColumn.new("RevenuePerConversion")
#     Source = TrafficSourcesReportColumn.new("Source")
#     Step1Count = TrafficSourcesReportColumn.new("Step1Count")
#     Step2Count = TrafficSourcesReportColumn.new("Step2Count")
#     Step3Count = TrafficSourcesReportColumn.new("Step3Count")
#     Step4Count = TrafficSourcesReportColumn.new("Step4Count")
#     Step5Count = TrafficSourcesReportColumn.new("Step5Count")
#     TimePeriod = TrafficSourcesReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SegmentationReportColumn
#   class SegmentationReportColumn < ::String
#     AccountId = SegmentationReportColumn.new("AccountId")
#     AccountName = SegmentationReportColumn.new("AccountName")
#     AccountNumber = SegmentationReportColumn.new("AccountNumber")
#     AdGroupId = SegmentationReportColumn.new("AdGroupId")
#     AdGroupName = SegmentationReportColumn.new("AdGroupName")
#     AgeGroup = SegmentationReportColumn.new("AgeGroup")
#     Assists = SegmentationReportColumn.new("Assists")
#     CampaignId = SegmentationReportColumn.new("CampaignId")
#     CampaignName = SegmentationReportColumn.new("CampaignName")
#     Conversions = SegmentationReportColumn.new("Conversions")
#     Country = SegmentationReportColumn.new("Country")
#     FunnelConversionRate = SegmentationReportColumn.new("FunnelConversionRate")
#     Gender = SegmentationReportColumn.new("Gender")
#     Goal = SegmentationReportColumn.new("Goal")
#     Keyword = SegmentationReportColumn.new("Keyword")
#     KeywordId = SegmentationReportColumn.new("KeywordId")
#     MetroArea = SegmentationReportColumn.new("MetroArea")
#     ReturnOnAdSpend = SegmentationReportColumn.new("ReturnOnAdSpend")
#     Revenue = SegmentationReportColumn.new("Revenue")
#     Spend = SegmentationReportColumn.new("Spend")
#     State = SegmentationReportColumn.new("State")
#     Step1Count = SegmentationReportColumn.new("Step1Count")
#     Step2Count = SegmentationReportColumn.new("Step2Count")
#     Step3Count = SegmentationReportColumn.new("Step3Count")
#     Step4Count = SegmentationReportColumn.new("Step4Count")
#     Step5Count = SegmentationReportColumn.new("Step5Count")
#     TimePeriod = SegmentationReportColumn.new("TimePeriod")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}AgeGroupReportFilter
#   #   contains list of AgeGroupReportFilter::*
#   class AgeGroupReportFilter < ::Array
#     Ages0to12 = "Ages0to12"
#     Ages13to17 = "Ages13to17"
#     Ages18to24 = "Ages18to24"
#     Ages25to34 = "Ages25to34"
#     Ages35to49 = "Ages35to49"
#     Ages50to64 = "Ages50to64"
#     Ages65plus = "Ages65plus"
#     Unknown = "Unknown"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}GenderReportFilter
#   #   contains list of GenderReportFilter::*
#   class GenderReportFilter < ::Array
#     Female = "Female"
#     Male = "Male"
#     Unknown = "Unknown"
#   end
# 
#   # {https://adcenter.microsoft.com/v7}ReportRequestStatusType
#   class ReportRequestStatusType < ::String
#     Error = ReportRequestStatusType.new("Error")
#     Pending = ReportRequestStatusType.new("Pending")
#     Success = ReportRequestStatusType.new("Success")
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SubmitGenerateReportRequest
#   #   reportRequest - AdCenterWrapper::ReportRequest
#   class SubmitGenerateReportRequest
#     attr_accessor :reportRequest
# 
#     def initialize(reportRequest = nil)
#       @reportRequest = reportRequest
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}SubmitGenerateReportResponse
#   #   reportRequestId - SOAP::SOAPString
#   class SubmitGenerateReportResponse
#     attr_accessor :reportRequestId
# 
#     def initialize(reportRequestId = nil)
#       @reportRequestId = reportRequestId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PollGenerateReportRequest
#   #   reportRequestId - SOAP::SOAPString
#   class PollGenerateReportRequest
#     attr_accessor :reportRequestId
# 
#     def initialize(reportRequestId = nil)
#       @reportRequestId = reportRequestId
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/v7}PollGenerateReportResponse
#   #   reportRequestStatus - AdCenterWrapper::ReportRequestStatus
#   class PollGenerateReportResponse
#     attr_accessor :reportRequestStatus
# 
#     def initialize(reportRequestStatus = nil)
#       @reportRequestStatus = reportRequestStatus
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}PaymentMethod
#   #   address - AdCenterWrapper::Address
#   #   customerId - SOAP::SOAPLong
#   #   id - SOAP::SOAPLong
#   #   timeStamp - SOAP::SOAPBase64
#   class PaymentMethod
#     attr_accessor :address
#     attr_accessor :customerId
#     attr_accessor :id
#     attr_accessor :timeStamp
# 
#     def initialize(address = nil, customerId = nil, id = nil, timeStamp = nil)
#       @address = address
#       @customerId = customerId
#       @id = id
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CreditCardPaymentMethod
#   #   address - AdCenterWrapper::Address
#   #   customerId - SOAP::SOAPLong
#   #   id - SOAP::SOAPLong
#   #   timeStamp - SOAP::SOAPBase64
#   #   expirationDate - SOAP::SOAPLong
#   #   firstName - SOAP::SOAPString
#   #   lastName - SOAP::SOAPString
#   #   middleInitial - SOAP::SOAPString
#   #   number - SOAP::SOAPString
#   #   securityCode - SOAP::SOAPString
#   #   type - AdCenterWrapper::CreditCardType
#   class CreditCardPaymentMethod < PaymentMethod
#     attr_accessor :address
#     attr_accessor :customerId
#     attr_accessor :id
#     attr_accessor :timeStamp
#     attr_accessor :expirationDate
#     attr_accessor :firstName
#     attr_accessor :lastName
#     attr_accessor :middleInitial
#     attr_accessor :number
#     attr_accessor :securityCode
#     attr_accessor :type
# 
#     def initialize(address = nil, customerId = nil, id = nil, timeStamp = nil, expirationDate = nil, firstName = nil, lastName = nil, middleInitial = nil, number = nil, securityCode = nil, type = nil)
#       @address = address
#       @customerId = customerId
#       @id = id
#       @timeStamp = timeStamp
#       @expirationDate = expirationDate
#       @firstName = firstName
#       @lastName = lastName
#       @middleInitial = middleInitial
#       @number = number
#       @securityCode = securityCode
#       @type = type
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}Address
#   #   city - SOAP::SOAPString
#   #   countryCode - SOAP::SOAPString
#   #   id - SOAP::SOAPLong
#   #   line1 - SOAP::SOAPString
#   #   line2 - SOAP::SOAPString
#   #   line3 - SOAP::SOAPString
#   #   line4 - SOAP::SOAPString
#   #   postalCode - SOAP::SOAPString
#   #   stateOrProvince - SOAP::SOAPString
#   #   timeStamp - SOAP::SOAPBase64
#   class Address
#     attr_accessor :city
#     attr_accessor :countryCode
#     attr_accessor :id
#     attr_accessor :line1
#     attr_accessor :line2
#     attr_accessor :line3
#     attr_accessor :line4
#     attr_accessor :postalCode
#     attr_accessor :stateOrProvince
#     attr_accessor :timeStamp
# 
#     def initialize(city = nil, countryCode = nil, id = nil, line1 = nil, line2 = nil, line3 = nil, line4 = nil, postalCode = nil, stateOrProvince = nil, timeStamp = nil)
#       @city = city
#       @countryCode = countryCode
#       @id = id
#       @line1 = line1
#       @line2 = line2
#       @line3 = line3
#       @line4 = line4
#       @postalCode = postalCode
#       @stateOrProvince = stateOrProvince
#       @timeStamp = timeStamp
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ApplicationFault
#   #   trackingId - SOAP::SOAPString
#   class ApplicationFault
#     attr_accessor :trackingId
# 
#     def initialize(trackingId = nil)
#       @trackingId = trackingId
#     end
#   end
# 
#   # {https://adapi.microsoft.com}AdApiFaultDetail
#   #   trackingId - SOAP::SOAPString
#   #   errors - AdCenterWrapper::ArrayOfAdApiError
#   class AdApiFaultDetail < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :errors
# 
#     def initialize(trackingId = nil, errors = nil)
#       @trackingId = trackingId
#       @errors = errors
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   #   trackingId - SOAP::SOAPString
#   #   operationErrors - AdCenterWrapper::ArrayOfOperationError
#   class ApiFault < ::StandardError
#     attr_accessor :trackingId
#     attr_accessor :operationErrors
# 
#     def initialize(trackingId = nil, operationErrors = nil)
#       @trackingId = trackingId
#       @operationErrors = operationErrors
#     end
#   end
# 
#   # {https://adapi.microsoft.com}ArrayOfAdApiError
#   class ArrayOfAdApiError < ::Array
#   end
# 
#   # {https://adapi.microsoft.com}AdApiError
#   #   code - SOAP::SOAPInt
#   #   detail - SOAP::SOAPString
#   #   errorCode - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class AdApiError
#     attr_accessor :code
#     attr_accessor :detail
#     attr_accessor :errorCode
#     attr_accessor :message
# 
#     def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#       @code = code
#       @detail = detail
#       @errorCode = errorCode
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
#   class ArrayOfOperationError < ::Array
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
#   #   code - SOAP::SOAPInt
#   #   details - SOAP::SOAPString
#   #   message - SOAP::SOAPString
#   class OperationError
#     attr_accessor :code
#     attr_accessor :details
#     attr_accessor :message
# 
#     def initialize(code = nil, details = nil, message = nil)
#       @code = code
#       @details = details
#       @message = message
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/customermanagement/Entities}CreditCardType
#   class CreditCardType < ::String
#     AmericanExpress = CreditCardType.new("AmericanExpress")
#     Mastercard = CreditCardType.new("Mastercard")
#     Visa = CreditCardType.new("Visa")
#   end
# 
#   # {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodRequest
#   #   paymentMethod - AdCenterWrapper::PaymentMethod
#   class AddPaymentMethodRequest
#     attr_accessor :paymentMethod
# 
#     def initialize(paymentMethod = nil)
#       @paymentMethod = paymentMethod
#     end
#   end
# 
#   # {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodResponse
#   #   paymentMethodId - SOAP::SOAPLong
#   class AddPaymentMethodResponse
#     attr_accessor :paymentMethodId
# 
#     def initialize(paymentMethodId = nil)
#       @paymentMethodId = paymentMethodId
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}ArrayOfNotification
#   class ArrayOfNotification < ::Array
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}Notification
#   # abstract
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   class Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}EditorialRejectionNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   accountName - SOAP::SOAPString
#   #   campaignName - SOAP::SOAPString
#   #   campaignId - SOAP::SOAPInt
#   #   orderId - SOAP::SOAPInt
#   #   orderName - SOAP::SOAPString
#   #   customerName - SOAP::SOAPString
#   #   adId - SOAP::SOAPInt
#   #   adTitle - SOAP::SOAPString
#   #   adDescription - SOAP::SOAPString
#   #   displayURL - SOAP::SOAPString
#   #   destinationURL - SOAP::SOAPString
#   #   keywordsRejected - SOAP::SOAPInt
#   #   keywordsAccepted - SOAP::SOAPInt
#   #   keywordsPending - SOAP::SOAPInt
#   #   top1Keyword - SOAP::SOAPString
#   #   top1KeywordReason - SOAP::SOAPString
#   #   top2Keyword - SOAP::SOAPString
#   #   top2KeywordReason - SOAP::SOAPString
#   #   top3Keyword - SOAP::SOAPString
#   #   top3KeywordReason - SOAP::SOAPString
#   #   top4Keyword - SOAP::SOAPString
#   #   top4KeywordReason - SOAP::SOAPString
#   #   top5Keyword - SOAP::SOAPString
#   #   top5KeywordReason - SOAP::SOAPString
#   class EditorialRejectionNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :accountName
#     attr_accessor :campaignName
#     attr_accessor :campaignId
#     attr_accessor :orderId
#     attr_accessor :orderName
#     attr_accessor :customerName
#     attr_accessor :adId
#     attr_accessor :adTitle
#     attr_accessor :adDescription
#     attr_accessor :displayURL
#     attr_accessor :destinationURL
#     attr_accessor :keywordsRejected
#     attr_accessor :keywordsAccepted
#     attr_accessor :keywordsPending
#     attr_accessor :top1Keyword
#     attr_accessor :top1KeywordReason
#     attr_accessor :top2Keyword
#     attr_accessor :top2KeywordReason
#     attr_accessor :top3Keyword
#     attr_accessor :top3KeywordReason
#     attr_accessor :top4Keyword
#     attr_accessor :top4KeywordReason
#     attr_accessor :top5Keyword
#     attr_accessor :top5KeywordReason
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountName = nil, campaignName = nil, campaignId = nil, orderId = nil, orderName = nil, customerName = nil, adId = nil, adTitle = nil, adDescription = nil, displayURL = nil, destinationURL = nil, keywordsRejected = nil, keywordsAccepted = nil, keywordsPending = nil, top1Keyword = nil, top1KeywordReason = nil, top2Keyword = nil, top2KeywordReason = nil, top3Keyword = nil, top3KeywordReason = nil, top4Keyword = nil, top4KeywordReason = nil, top5Keyword = nil, top5KeywordReason = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @accountName = accountName
#       @campaignName = campaignName
#       @campaignId = campaignId
#       @orderId = orderId
#       @orderName = orderName
#       @customerName = customerName
#       @adId = adId
#       @adTitle = adTitle
#       @adDescription = adDescription
#       @displayURL = displayURL
#       @destinationURL = destinationURL
#       @keywordsRejected = keywordsRejected
#       @keywordsAccepted = keywordsAccepted
#       @keywordsPending = keywordsPending
#       @top1Keyword = top1Keyword
#       @top1KeywordReason = top1KeywordReason
#       @top2Keyword = top2Keyword
#       @top2KeywordReason = top2KeywordReason
#       @top3Keyword = top3Keyword
#       @top3KeywordReason = top3KeywordReason
#       @top4Keyword = top4Keyword
#       @top4KeywordReason = top4KeywordReason
#       @top5Keyword = top5Keyword
#       @top5KeywordReason = top5KeywordReason
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}AccountSignupPaymentReceiptNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   accountName - SOAP::SOAPString
#   #   preferredUserName - SOAP::SOAPString
#   #   creditCardName - SOAP::SOAPString
#   #   creditCardTypeName - SOAP::SOAPString
#   #   creditCardLastFour - SOAP::SOAPString
#   #   accountSetupFee - SOAP::SOAPDouble
#   #   preferredCurrencyCode - SOAP::SOAPString
#   class AccountSignupPaymentReceiptNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :accountName
#     attr_accessor :preferredUserName
#     attr_accessor :creditCardName
#     attr_accessor :creditCardTypeName
#     attr_accessor :creditCardLastFour
#     attr_accessor :accountSetupFee
#     attr_accessor :preferredCurrencyCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountName = nil, preferredUserName = nil, creditCardName = nil, creditCardTypeName = nil, creditCardLastFour = nil, accountSetupFee = nil, preferredCurrencyCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @accountName = accountName
#       @preferredUserName = preferredUserName
#       @creditCardName = creditCardName
#       @creditCardTypeName = creditCardTypeName
#       @creditCardLastFour = creditCardLastFour
#       @accountSetupFee = accountSetupFee
#       @preferredCurrencyCode = preferredCurrencyCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}AccountClosedNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   customerName - SOAP::SOAPString
#   #   statusDate - SOAP::SOAPDateTime
#   class AccountClosedNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :customerName
#     attr_accessor :statusDate
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, customerName = nil, statusDate = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @customerName = customerName
#       @statusDate = statusDate
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}UnableToChargeCreditCardNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   accountFinancialStatus - AdCenterWrapper::AccountFinancialStatusType
#   #   creditCardTypeName - SOAP::SOAPString
#   #   creditCardLastFour - SOAP::SOAPString
#   #   preferredCurrencyCode - SOAP::SOAPString
#   #   balanceAmount - SOAP::SOAPDouble
#   class UnableToChargeCreditCardNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :accountFinancialStatus
#     attr_accessor :creditCardTypeName
#     attr_accessor :creditCardLastFour
#     attr_accessor :preferredCurrencyCode
#     attr_accessor :balanceAmount
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountFinancialStatus = nil, creditCardTypeName = nil, creditCardLastFour = nil, preferredCurrencyCode = nil, balanceAmount = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @accountFinancialStatus = accountFinancialStatus
#       @creditCardTypeName = creditCardTypeName
#       @creditCardLastFour = creditCardLastFour
#       @preferredCurrencyCode = preferredCurrencyCode
#       @balanceAmount = balanceAmount
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}CreditCardNotification
#   # abstract
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   creditCardTypeName - SOAP::SOAPString
#   #   creditCardLastFour - SOAP::SOAPString
#   #   creditCardExpirationDate - SOAP::SOAPDateTime
#   #   noticeNumber - SOAP::SOAPInt
#   class CreditCardNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :creditCardTypeName
#     attr_accessor :creditCardLastFour
#     attr_accessor :creditCardExpirationDate
#     attr_accessor :noticeNumber
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @creditCardTypeName = creditCardTypeName
#       @creditCardLastFour = creditCardLastFour
#       @creditCardExpirationDate = creditCardExpirationDate
#       @noticeNumber = noticeNumber
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}CreditCardExpiredNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   creditCardTypeName - SOAP::SOAPString
#   #   creditCardLastFour - SOAP::SOAPString
#   #   creditCardExpirationDate - SOAP::SOAPDateTime
#   #   noticeNumber - SOAP::SOAPInt
#   class CreditCardExpiredNotification < CreditCardNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :creditCardTypeName
#     attr_accessor :creditCardLastFour
#     attr_accessor :creditCardExpirationDate
#     attr_accessor :noticeNumber
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @creditCardTypeName = creditCardTypeName
#       @creditCardLastFour = creditCardLastFour
#       @creditCardExpirationDate = creditCardExpirationDate
#       @noticeNumber = noticeNumber
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}ApproachingCreditCardExpirationNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   accountId - SOAP::SOAPInt
#   #   accountNumber - SOAP::SOAPString
#   #   creditCardTypeName - SOAP::SOAPString
#   #   creditCardLastFour - SOAP::SOAPString
#   #   creditCardExpirationDate - SOAP::SOAPDateTime
#   #   noticeNumber - SOAP::SOAPInt
#   class ApproachingCreditCardExpirationNotification < CreditCardNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :accountId
#     attr_accessor :accountNumber
#     attr_accessor :creditCardTypeName
#     attr_accessor :creditCardLastFour
#     attr_accessor :creditCardExpirationDate
#     attr_accessor :noticeNumber
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @accountId = accountId
#       @accountNumber = accountNumber
#       @creditCardTypeName = creditCardTypeName
#       @creditCardLastFour = creditCardLastFour
#       @creditCardExpirationDate = creditCardExpirationDate
#       @noticeNumber = noticeNumber
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}UserNotification
#   # abstract
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   userId - SOAP::SOAPInt
#   #   userName - SOAP::SOAPString
#   #   activationCode - SOAP::SOAPString
#   class UserNotification < Notification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :userId
#     attr_accessor :userName
#     attr_accessor :activationCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @userId = userId
#       @userName = userName
#       @activationCode = activationCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}UserNameReminderNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   userId - SOAP::SOAPInt
#   #   userName - SOAP::SOAPString
#   #   activationCode - SOAP::SOAPString
#   class UserNameReminderNotification < UserNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :userId
#     attr_accessor :userName
#     attr_accessor :activationCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @userId = userId
#       @userName = userName
#       @activationCode = activationCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}UserPasswordResetNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   userId - SOAP::SOAPInt
#   #   userName - SOAP::SOAPString
#   #   activationCode - SOAP::SOAPString
#   class UserPasswordResetNotification < UserNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :userId
#     attr_accessor :userName
#     attr_accessor :activationCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @userId = userId
#       @userName = userName
#       @activationCode = activationCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}NewUserAddedNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   userId - SOAP::SOAPInt
#   #   userName - SOAP::SOAPString
#   #   activationCode - SOAP::SOAPString
#   class NewUserAddedNotification < UserNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :userId
#     attr_accessor :userName
#     attr_accessor :activationCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @userId = userId
#       @userName = userName
#       @activationCode = activationCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}NewCustomerSignupNotification
#   #   notificationType - AdCenterWrapper::NotificationType
#   #   customerId - SOAP::SOAPInt
#   #   userLocale - SOAP::SOAPString
#   #   recipientEmailAddress - SOAP::SOAPString
#   #   notificationDate - SOAP::SOAPDateTime
#   #   userId - SOAP::SOAPInt
#   #   userName - SOAP::SOAPString
#   #   activationCode - SOAP::SOAPString
#   class NewCustomerSignupNotification < UserNotification
#     attr_accessor :notificationType
#     attr_accessor :customerId
#     attr_accessor :userLocale
#     attr_accessor :recipientEmailAddress
#     attr_accessor :notificationDate
#     attr_accessor :userId
#     attr_accessor :userName
#     attr_accessor :activationCode
# 
#     def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
#       @notificationType = notificationType
#       @customerId = customerId
#       @userLocale = userLocale
#       @recipientEmailAddress = recipientEmailAddress
#       @notificationDate = notificationDate
#       @userId = userId
#       @userName = userName
#       @activationCode = activationCode
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}ApiUserAuthHeader
#   #   userName - SOAP::SOAPString
#   #   password - SOAP::SOAPString
#   #   userAccessKey - SOAP::SOAPString
#   class ApiUserAuthHeader
#     attr_accessor :userName
#     attr_accessor :password
#     attr_accessor :userAccessKey
# 
#     def initialize(userName = nil, password = nil, userAccessKey = nil)
#       @userName = userName
#       @password = password
#       @userAccessKey = userAccessKey
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}NotificationType
#   class NotificationType < ::String
#     AccountClosed = NotificationType.new("AccountClosed")
#     AccountSignupPaymentReceipt = NotificationType.new("AccountSignupPaymentReceipt")
#     ApproachingCreditCardExpiration = NotificationType.new("ApproachingCreditCardExpiration")
#     CreditCardExpired = NotificationType.new("CreditCardExpired")
#     EditorialRejection = NotificationType.new("EditorialRejection")
#     NewCustomerSignup = NotificationType.new("NewCustomerSignup")
#     NewUserAdded = NotificationType.new("NewUserAdded")
#     UnableToChargeCreditCard = NotificationType.new("UnableToChargeCreditCard")
#     UserNameReminder = NotificationType.new("UserNameReminder")
#     UserPasswordReset = NotificationType.new("UserPasswordReset")
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}AccountFinancialStatusType
#   class AccountFinancialStatusType < ::String
#     CreditHold = AccountFinancialStatusType.new("CreditHold")
#     CreditWarning = AccountFinancialStatusType.new("CreditWarning")
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetNotifications
#   #   aPIFlags - SOAP::SOAPInt
#   class GetNotifications
#     attr_accessor :aPIFlags
# 
#     def initialize(aPIFlags = nil)
#       @aPIFlags = aPIFlags
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetNotificationsResponse
#   #   getNotificationsResult - AdCenterWrapper::ArrayOfNotification
#   class GetNotificationsResponse
#     attr_accessor :getNotificationsResult
# 
#     def initialize(getNotificationsResult = nil)
#       @getNotificationsResult = getNotificationsResult
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetNotificationsByType
#   #   aPIFlags - SOAP::SOAPInt
#   #   notificationType - AdCenterWrapper::NotificationType
#   class GetNotificationsByType
#     attr_accessor :aPIFlags
#     attr_accessor :notificationType
# 
#     def initialize(aPIFlags = nil, notificationType = nil)
#       @aPIFlags = aPIFlags
#       @notificationType = notificationType
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetNotificationsByTypeResponse
#   #   getNotificationsByTypeResult - AdCenterWrapper::ArrayOfNotification
#   class GetNotificationsByTypeResponse
#     attr_accessor :getNotificationsByTypeResult
# 
#     def initialize(getNotificationsByTypeResult = nil)
#       @getNotificationsByTypeResult = getNotificationsByTypeResult
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetArchivedNotifications
#   #   aPIFlags - SOAP::SOAPInt
#   #   startDate - SOAP::SOAPDateTime
#   #   endDate - SOAP::SOAPDateTime
#   class GetArchivedNotifications
#     attr_accessor :aPIFlags
#     attr_accessor :startDate
#     attr_accessor :endDate
# 
#     def initialize(aPIFlags = nil, startDate = nil, endDate = nil)
#       @aPIFlags = aPIFlags
#       @startDate = startDate
#       @endDate = endDate
#     end
#   end
# 
#   # {http://adcenter.microsoft.com/syncapis}GetArchivedNotificationsResponse
#   #   getArchivedNotificationsResult - AdCenterWrapper::ArrayOfNotification
#   class GetArchivedNotificationsResponse
#     attr_accessor :getArchivedNotificationsResult
# 
#     def initialize(getArchivedNotificationsResult = nil)
#       @getArchivedNotificationsResult = getArchivedNotificationsResult
#     end
#   end
# 
end
