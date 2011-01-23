require 'xsd/qname'

# {https://adcenter.microsoft.com/v7}Ad
#   editorialStatus - AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdStatus
#   type - AdType
class Ad
  attr_accessor :editorialStatus
  attr_accessor :id
  attr_accessor :status
  attr_accessor :type

  def initialize(editorialStatus = nil, id = nil, status = nil, type = nil)
    @editorialStatus = editorialStatus
    @id = id
    @status = status
    @type = type
  end
end

# {https://adcenter.microsoft.com/v7}MobileAd
#   editorialStatus - AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdStatus
#   type - AdType
#   businessName - SOAP::SOAPString
#   destinationUrl - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   text - SOAP::SOAPString
#   title - SOAP::SOAPString
class MobileAd < Ad
  attr_accessor :editorialStatus
  attr_accessor :id
  attr_accessor :status
  attr_accessor :type
  attr_accessor :businessName
  attr_accessor :destinationUrl
  attr_accessor :displayUrl
  attr_accessor :phoneNumber
  attr_accessor :text
  attr_accessor :title

  def initialize(editorialStatus = nil, id = nil, status = nil, type = nil, businessName = nil, destinationUrl = nil, displayUrl = nil, phoneNumber = nil, text = nil, title = nil)
    @editorialStatus = editorialStatus
    @id = id
    @status = status
    @type = type
    @businessName = businessName
    @destinationUrl = destinationUrl
    @displayUrl = displayUrl
    @phoneNumber = phoneNumber
    @text = text
    @title = title
  end
end

# {https://adcenter.microsoft.com/v7}TextAd
#   editorialStatus - AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdStatus
#   type - AdType
#   destinationUrl - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   text - SOAP::SOAPString
#   title - SOAP::SOAPString
class TextAd < Ad
  attr_accessor :editorialStatus
  attr_accessor :id
  attr_accessor :status
  attr_accessor :type
  attr_accessor :destinationUrl
  attr_accessor :displayUrl
  attr_accessor :text
  attr_accessor :title

  def initialize(editorialStatus = nil, id = nil, status = nil, type = nil, destinationUrl = nil, displayUrl = nil, text = nil, title = nil)
    @editorialStatus = editorialStatus
    @id = id
    @status = status
    @type = type
    @destinationUrl = destinationUrl
    @displayUrl = displayUrl
    @text = text
    @title = title
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBehavioralBid
class ArrayOfBehavioralBid < ::Array
end

# {https://adcenter.microsoft.com/v7}BehavioralBid
#   bid - Bid
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   segmentId - SOAP::SOAPLong
#   status - BehavioralBidStatus
class BehavioralBid
  attr_accessor :bid
  attr_accessor :id
  attr_accessor :name
  attr_accessor :segmentId
  attr_accessor :status

  def initialize(bid = nil, id = nil, name = nil, segmentId = nil, status = nil)
    @bid = bid
    @id = id
    @name = name
    @segmentId = segmentId
    @status = status
  end
end

# {https://adcenter.microsoft.com/v7}Bid
#   amount - SOAP::SOAPDouble
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBatchError
class ArrayOfBatchError < ::Array
end

# {https://adcenter.microsoft.com/v7}BatchError
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

# {https://adcenter.microsoft.com/v7}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# {https://adcenter.microsoft.com/v7}OperationError
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

# {https://adcenter.microsoft.com/v7}ArrayOfSegment
class ArrayOfSegment < ::Array
end

# {https://adcenter.microsoft.com/v7}Segment
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
class Segment
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfEditorialReasonCollection
class ArrayOfEditorialReasonCollection < ::Array
end

# {https://adcenter.microsoft.com/v7}EditorialReasonCollection
#   adOrKeywordId - SOAP::SOAPLong
#   reasons - ArrayOfEditorialReason
class EditorialReasonCollection
  attr_accessor :adOrKeywordId
  attr_accessor :reasons

  def initialize(adOrKeywordId = nil, reasons = nil)
    @adOrKeywordId = adOrKeywordId
    @reasons = reasons
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfEditorialReason
class ArrayOfEditorialReason < ::Array
end

# {https://adcenter.microsoft.com/v7}EditorialReason
#   location - AdComponent
#   reasonCode - SOAP::SOAPInt
#   term - SOAP::SOAPString
class EditorialReason
  attr_accessor :location
  attr_accessor :reasonCode
  attr_accessor :term

  def initialize(location = nil, reasonCode = nil, term = nil)
    @location = location
    @reasonCode = reasonCode
    @term = term
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAd
class ArrayOfAd < ::Array
end

# {https://adcenter.microsoft.com/v7}ArrayOfEditorialError
class ArrayOfEditorialError < ::Array
end

# {https://adcenter.microsoft.com/v7}EditorialError
#   appealable - SOAP::SOAPBoolean
#   code - SOAP::SOAPInt
#   disapprovedText - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   message - SOAP::SOAPString
class EditorialError
  attr_accessor :appealable
  attr_accessor :code
  attr_accessor :disapprovedText
  attr_accessor :errorCode
  attr_accessor :index
  attr_accessor :message

  def initialize(appealable = nil, code = nil, disapprovedText = nil, errorCode = nil, index = nil, message = nil)
    @appealable = appealable
    @code = code
    @disapprovedText = disapprovedText
    @errorCode = errorCode
    @index = index
    @message = message
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfKeyword
class ArrayOfKeyword < ::Array
end

# {https://adcenter.microsoft.com/v7}Keyword
#   broadMatchBid - Bid
#   cashBackInfo - CashBackInfo
#   contentMatchBid - Bid
#   editorialStatus - KeywordEditorialStatus
#   exactMatchBid - Bid
#   id - SOAP::SOAPLong
#   negativeKeywords - ArrayOfstring
#   overridePriority - OverridePriority
#   param1 - SOAP::SOAPString
#   param2 - SOAP::SOAPString
#   param3 - SOAP::SOAPString
#   phraseMatchBid - Bid
#   status - KeywordStatus
#   text - SOAP::SOAPString
class Keyword
  attr_accessor :broadMatchBid
  attr_accessor :cashBackInfo
  attr_accessor :contentMatchBid
  attr_accessor :editorialStatus
  attr_accessor :exactMatchBid
  attr_accessor :id
  attr_accessor :negativeKeywords
  attr_accessor :overridePriority
  attr_accessor :param1
  attr_accessor :param2
  attr_accessor :param3
  attr_accessor :phraseMatchBid
  attr_accessor :status
  attr_accessor :text

  def initialize(broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, editorialStatus = nil, exactMatchBid = nil, id = nil, negativeKeywords = nil, overridePriority = nil, param1 = nil, param2 = nil, param3 = nil, phraseMatchBid = nil, status = nil, text = nil)
    @broadMatchBid = broadMatchBid
    @cashBackInfo = cashBackInfo
    @contentMatchBid = contentMatchBid
    @editorialStatus = editorialStatus
    @exactMatchBid = exactMatchBid
    @id = id
    @negativeKeywords = negativeKeywords
    @overridePriority = overridePriority
    @param1 = param1
    @param2 = param2
    @param3 = param3
    @phraseMatchBid = phraseMatchBid
    @status = status
    @text = text
  end
end

# {https://adcenter.microsoft.com/v7}CashBackInfo
#   cashBackAmount - SOAP::SOAPDouble
#   cashBackStatus - CashBackStatus
#   cashBackText - SOAP::SOAPString
class CashBackInfo
  attr_accessor :cashBackAmount
  attr_accessor :cashBackStatus
  attr_accessor :cashBackText

  def initialize(cashBackAmount = nil, cashBackStatus = nil, cashBackText = nil)
    @cashBackAmount = cashBackAmount
    @cashBackStatus = cashBackStatus
    @cashBackText = cashBackText
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfKeywordBid
class ArrayOfKeywordBid < ::Array
end

# {https://adcenter.microsoft.com/v7}KeywordBid
#   broadMatchBid - SOAP::SOAPDouble
#   exactMatchBid - SOAP::SOAPDouble
#   keyword - SOAP::SOAPString
#   phraseMatchBid - SOAP::SOAPDouble
class KeywordBid
  attr_accessor :broadMatchBid
  attr_accessor :exactMatchBid
  attr_accessor :keyword
  attr_accessor :phraseMatchBid

  def initialize(broadMatchBid = nil, exactMatchBid = nil, keyword = nil, phraseMatchBid = nil)
    @broadMatchBid = broadMatchBid
    @exactMatchBid = exactMatchBid
    @keyword = keyword
    @phraseMatchBid = phraseMatchBid
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfKeywordEstimate
class ArrayOfKeywordEstimate < ::Array
end

# {https://adcenter.microsoft.com/v7}KeywordEstimate
#   averageMonthlyCost - SOAP::SOAPDouble
#   averageMonthlyPosition - SOAP::SOAPInt
#   broadKeywordEstimate - MatchTypeEstimate
#   estimatedTotalMonthlyImpressions - SOAP::SOAPInt
#   exactKeywordEstimate - MatchTypeEstimate
#   phraseKeywordEstimate - MatchTypeEstimate
class KeywordEstimate
  attr_accessor :averageMonthlyCost
  attr_accessor :averageMonthlyPosition
  attr_accessor :broadKeywordEstimate
  attr_accessor :estimatedTotalMonthlyImpressions
  attr_accessor :exactKeywordEstimate
  attr_accessor :phraseKeywordEstimate

  def initialize(averageMonthlyCost = nil, averageMonthlyPosition = nil, broadKeywordEstimate = nil, estimatedTotalMonthlyImpressions = nil, exactKeywordEstimate = nil, phraseKeywordEstimate = nil)
    @averageMonthlyCost = averageMonthlyCost
    @averageMonthlyPosition = averageMonthlyPosition
    @broadKeywordEstimate = broadKeywordEstimate
    @estimatedTotalMonthlyImpressions = estimatedTotalMonthlyImpressions
    @exactKeywordEstimate = exactKeywordEstimate
    @phraseKeywordEstimate = phraseKeywordEstimate
  end
end

# {https://adcenter.microsoft.com/v7}MatchTypeEstimate
#   monthlyCost - SOAP::SOAPDouble
#   monthlyImpressions - SOAP::SOAPInt
#   position - SOAP::SOAPInt
class MatchTypeEstimate
  attr_accessor :monthlyCost
  attr_accessor :monthlyImpressions
  attr_accessor :position

  def initialize(monthlyCost = nil, monthlyImpressions = nil, position = nil)
    @monthlyCost = monthlyCost
    @monthlyImpressions = monthlyImpressions
    @position = position
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBusiness
class ArrayOfBusiness < ::Array
end

# {https://adcenter.microsoft.com/v7}Business
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   businessImageIcon - BusinessImageIcon
#   city - SOAP::SOAPString
#   countryOrRegion - SOAP::SOAPString
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   geoCodeStatus - BusinessGeoCodeStatus
#   hrsOfOperation - ArrayOfHoursOfOperation
#   id - SOAP::SOAPLong
#   isOpen24Hours - SOAP::SOAPBoolean
#   latitudeDegrees - SOAP::SOAPDouble
#   longitudeDegrees - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   otherPaymentTypeDesc - SOAP::SOAPString
#   payment - ArrayOfPaymentType
#   phone - SOAP::SOAPString
#   stateOrProvince - SOAP::SOAPString
#   status - BusinessStatus
#   uRL - SOAP::SOAPString
#   zipOrPostalCode - SOAP::SOAPString
class Business
  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :businessImageIcon
  attr_accessor :city
  attr_accessor :countryOrRegion
  attr_accessor :description
  attr_accessor :email
  attr_accessor :geoCodeStatus
  attr_accessor :hrsOfOperation
  attr_accessor :id
  attr_accessor :isOpen24Hours
  attr_accessor :latitudeDegrees
  attr_accessor :longitudeDegrees
  attr_accessor :name
  attr_accessor :otherPaymentTypeDesc
  attr_accessor :payment
  attr_accessor :phone
  attr_accessor :stateOrProvince
  attr_accessor :status
  attr_accessor :uRL
  attr_accessor :zipOrPostalCode

  def initialize(addressLine1 = nil, addressLine2 = nil, businessImageIcon = nil, city = nil, countryOrRegion = nil, description = nil, email = nil, geoCodeStatus = nil, hrsOfOperation = nil, id = nil, isOpen24Hours = nil, latitudeDegrees = nil, longitudeDegrees = nil, name = nil, otherPaymentTypeDesc = nil, payment = nil, phone = nil, stateOrProvince = nil, status = nil, uRL = nil, zipOrPostalCode = nil)
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @businessImageIcon = businessImageIcon
    @city = city
    @countryOrRegion = countryOrRegion
    @description = description
    @email = email
    @geoCodeStatus = geoCodeStatus
    @hrsOfOperation = hrsOfOperation
    @id = id
    @isOpen24Hours = isOpen24Hours
    @latitudeDegrees = latitudeDegrees
    @longitudeDegrees = longitudeDegrees
    @name = name
    @otherPaymentTypeDesc = otherPaymentTypeDesc
    @payment = payment
    @phone = phone
    @stateOrProvince = stateOrProvince
    @status = status
    @uRL = uRL
    @zipOrPostalCode = zipOrPostalCode
  end
end

# {https://adcenter.microsoft.com/v7}BusinessImageIcon
#   customIconAssetId - SOAP::SOAPLong
#   standardBusinessIcon - StandardBusinessIcon
class BusinessImageIcon
  attr_accessor :customIconAssetId
  attr_accessor :standardBusinessIcon

  def initialize(customIconAssetId = nil, standardBusinessIcon = nil)
    @customIconAssetId = customIconAssetId
    @standardBusinessIcon = standardBusinessIcon
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfHoursOfOperation
class ArrayOfHoursOfOperation < ::Array
end

# {https://adcenter.microsoft.com/v7}HoursOfOperation
#   day - Day
#   openTime1 - DayTimeInterval
#   openTime2 - DayTimeInterval
class HoursOfOperation
  attr_accessor :day
  attr_accessor :openTime1
  attr_accessor :openTime2

  def initialize(day = nil, openTime1 = nil, openTime2 = nil)
    @day = day
    @openTime1 = openTime1
    @openTime2 = openTime2
  end
end

# {https://adcenter.microsoft.com/v7}DayTimeInterval
#   m_begin - TimeOfTheDay
#   m_end - TimeOfTheDay
class DayTimeInterval
  def m_begin
    @v_begin
  end

  def m_begin=(value)
    @v_begin = value
  end

  def m_end
    @v_end
  end

  def m_end=(value)
    @v_end = value
  end

  def initialize(v_begin = nil, v_end = nil)
    @v_begin = v_begin
    @v_end = v_end
  end
end

# {https://adcenter.microsoft.com/v7}TimeOfTheDay
#   hour - SOAP::SOAPShort
#   minute - SOAP::SOAPShort
class TimeOfTheDay
  attr_accessor :hour
  attr_accessor :minute

  def initialize(hour = nil, minute = nil)
    @hour = hour
    @minute = minute
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfPaymentType
class ArrayOfPaymentType < ::Array
end

# {https://adcenter.microsoft.com/v7}ArrayOfBusinessInfo
class ArrayOfBusinessInfo < ::Array
end

# {https://adcenter.microsoft.com/v7}BusinessInfo
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
class BusinessInfo
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfSitePlacement
class ArrayOfSitePlacement < ::Array
end

# {https://adcenter.microsoft.com/v7}SitePlacement
#   bid - Bid
#   id - SOAP::SOAPLong
#   placementId - SOAP::SOAPLong
#   status - SitePlacementStatus
#   url - SOAP::SOAPString
class SitePlacement
  attr_accessor :bid
  attr_accessor :id
  attr_accessor :placementId
  attr_accessor :status
  attr_accessor :url

  def initialize(bid = nil, id = nil, placementId = nil, status = nil, url = nil)
    @bid = bid
    @id = id
    @placementId = placementId
    @status = status
    @url = url
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfArrayOfPlacementDetail
class ArrayOfArrayOfPlacementDetail < ::Array
end

# {https://adcenter.microsoft.com/v7}ArrayOfPlacementDetail
class ArrayOfPlacementDetail < ::Array
end

# {https://adcenter.microsoft.com/v7}PlacementDetail
#   impressionsRangePerDay - ImpressionsPerDayRange
#   pathName - SOAP::SOAPString
#   placementId - SOAP::SOAPLong
#   supportedMediaTypes - ArrayOfMediaType
class PlacementDetail
  attr_accessor :impressionsRangePerDay
  attr_accessor :pathName
  attr_accessor :placementId
  attr_accessor :supportedMediaTypes

  def initialize(impressionsRangePerDay = nil, pathName = nil, placementId = nil, supportedMediaTypes = nil)
    @impressionsRangePerDay = impressionsRangePerDay
    @pathName = pathName
    @placementId = placementId
    @supportedMediaTypes = supportedMediaTypes
  end
end

# {https://adcenter.microsoft.com/v7}ImpressionsPerDayRange
#   maximum - SOAP::SOAPInt
#   minimum - SOAP::SOAPInt
class ImpressionsPerDayRange
  attr_accessor :maximum
  attr_accessor :minimum

  def initialize(maximum = nil, minimum = nil)
    @maximum = maximum
    @minimum = minimum
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfMediaType
class ArrayOfMediaType < ::Array
end

# {https://adcenter.microsoft.com/v7}MediaType
#   dimensions - ArrayOfDimension
#   name - SOAP::SOAPString
class MediaType
  attr_accessor :dimensions
  attr_accessor :name

  def initialize(dimensions = nil, name = nil)
    @dimensions = dimensions
    @name = name
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfDimension
class ArrayOfDimension < ::Array
end

# {https://adcenter.microsoft.com/v7}Dimension
#   height - SOAP::SOAPInt
#   width - SOAP::SOAPInt
class Dimension
  attr_accessor :height
  attr_accessor :width

  def initialize(height = nil, width = nil)
    @height = height
    @width = width
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCampaign
class ArrayOfCampaign < ::Array
end

# {https://adcenter.microsoft.com/v7}Campaign
#   budgetType - BudgetLimitType
#   cashBackInfo - CashBackInfo
#   conversionTrackingEnabled - SOAP::SOAPBoolean
#   conversionTrackingScript - SOAP::SOAPString
#   dailyBudget - SOAP::SOAPDouble
#   daylightSaving - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   monthlyBudget - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   negativeKeywords - ArrayOfstring
#   negativeSiteUrls - ArrayOfstring
#   status - CampaignStatus
#   timeZone - SOAP::SOAPString
class Campaign
  attr_accessor :budgetType
  attr_accessor :cashBackInfo
  attr_accessor :conversionTrackingEnabled
  attr_accessor :conversionTrackingScript
  attr_accessor :dailyBudget
  attr_accessor :daylightSaving
  attr_accessor :description
  attr_accessor :id
  attr_accessor :monthlyBudget
  attr_accessor :name
  attr_accessor :negativeKeywords
  attr_accessor :negativeSiteUrls
  attr_accessor :status
  attr_accessor :timeZone

  def initialize(budgetType = nil, cashBackInfo = nil, conversionTrackingEnabled = nil, conversionTrackingScript = nil, dailyBudget = nil, daylightSaving = nil, description = nil, id = nil, monthlyBudget = nil, name = nil, negativeKeywords = nil, negativeSiteUrls = nil, status = nil, timeZone = nil)
    @budgetType = budgetType
    @cashBackInfo = cashBackInfo
    @conversionTrackingEnabled = conversionTrackingEnabled
    @conversionTrackingScript = conversionTrackingScript
    @dailyBudget = dailyBudget
    @daylightSaving = daylightSaving
    @description = description
    @id = id
    @monthlyBudget = monthlyBudget
    @name = name
    @negativeKeywords = negativeKeywords
    @negativeSiteUrls = negativeSiteUrls
    @status = status
    @timeZone = timeZone
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCampaignInfo
class ArrayOfCampaignInfo < ::Array
end

# {https://adcenter.microsoft.com/v7}CampaignInfo
#   budgetType - BudgetLimitType
#   cashBackInfo - CashBackInfo
#   conversionTrackingEnabled - SOAP::SOAPBoolean
#   conversionTrackingScript - SOAP::SOAPString
#   dailyBudget - SOAP::SOAPDouble
#   daylightSaving - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   monthlyBudget - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   status - CampaignStatus
#   timeZone - SOAP::SOAPString
class CampaignInfo
  attr_accessor :budgetType
  attr_accessor :cashBackInfo
  attr_accessor :conversionTrackingEnabled
  attr_accessor :conversionTrackingScript
  attr_accessor :dailyBudget
  attr_accessor :daylightSaving
  attr_accessor :description
  attr_accessor :id
  attr_accessor :monthlyBudget
  attr_accessor :name
  attr_accessor :status
  attr_accessor :timeZone

  def initialize(budgetType = nil, cashBackInfo = nil, conversionTrackingEnabled = nil, conversionTrackingScript = nil, dailyBudget = nil, daylightSaving = nil, description = nil, id = nil, monthlyBudget = nil, name = nil, status = nil, timeZone = nil)
    @budgetType = budgetType
    @cashBackInfo = cashBackInfo
    @conversionTrackingEnabled = conversionTrackingEnabled
    @conversionTrackingScript = conversionTrackingScript
    @dailyBudget = dailyBudget
    @daylightSaving = daylightSaving
    @description = description
    @id = id
    @monthlyBudget = monthlyBudget
    @name = name
    @status = status
    @timeZone = timeZone
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCampaignNegativeKeywords
class ArrayOfCampaignNegativeKeywords < ::Array
end

# {https://adcenter.microsoft.com/v7}CampaignNegativeKeywords
#   campaignId - SOAP::SOAPLong
#   negativeKeywords - ArrayOfstring
class CampaignNegativeKeywords
  attr_accessor :campaignId
  attr_accessor :negativeKeywords

  def initialize(campaignId = nil, negativeKeywords = nil)
    @campaignId = campaignId
    @negativeKeywords = negativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdGroup
class ArrayOfAdGroup < ::Array
end

# {https://adcenter.microsoft.com/v7}AdGroup
#   adDistribution - (any)
#   biddingModel - BiddingModel
#   broadMatchBid - Bid
#   cashBackInfo - CashBackInfo
#   contentMatchBid - Bid
#   endDate - Date
#   exactMatchBid - Bid
#   id - SOAP::SOAPLong
#   languageAndRegion - SOAP::SOAPString
#   name - SOAP::SOAPString
#   negativeKeywords - ArrayOfstring
#   negativeSiteUrls - ArrayOfstring
#   phraseMatchBid - Bid
#   pricingModel - PricingModel
#   startDate - Date
#   status - AdGroupStatus
class AdGroup
  attr_accessor :adDistribution
  attr_accessor :biddingModel
  attr_accessor :broadMatchBid
  attr_accessor :cashBackInfo
  attr_accessor :contentMatchBid
  attr_accessor :endDate
  attr_accessor :exactMatchBid
  attr_accessor :id
  attr_accessor :languageAndRegion
  attr_accessor :name
  attr_accessor :negativeKeywords
  attr_accessor :negativeSiteUrls
  attr_accessor :phraseMatchBid
  attr_accessor :pricingModel
  attr_accessor :startDate
  attr_accessor :status

  def initialize(adDistribution = nil, biddingModel = nil, broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, endDate = nil, exactMatchBid = nil, id = nil, languageAndRegion = nil, name = nil, negativeKeywords = nil, negativeSiteUrls = nil, phraseMatchBid = nil, pricingModel = nil, startDate = nil, status = nil)
    @adDistribution = adDistribution
    @biddingModel = biddingModel
    @broadMatchBid = broadMatchBid
    @cashBackInfo = cashBackInfo
    @contentMatchBid = contentMatchBid
    @endDate = endDate
    @exactMatchBid = exactMatchBid
    @id = id
    @languageAndRegion = languageAndRegion
    @name = name
    @negativeKeywords = negativeKeywords
    @negativeSiteUrls = negativeSiteUrls
    @phraseMatchBid = phraseMatchBid
    @pricingModel = pricingModel
    @startDate = startDate
    @status = status
  end
end

# # {https://adcenter.microsoft.com/v7}Date
# #   day - SOAP::SOAPInt
# #   month - SOAP::SOAPInt
# #   year - SOAP::SOAPInt
# class Date
#   attr_accessor :day
#   attr_accessor :month
#   attr_accessor :year
# 
#   def initialize(day = nil, month = nil, year = nil)
#     @day = day
#     @month = month
#     @year = year
#   end
# end
# 
# {https://adcenter.microsoft.com/v7}ArrayOfAdGroupInfo
class ArrayOfAdGroupInfo < ::Array
end

# {https://adcenter.microsoft.com/v7}AdGroupInfo
#   adDistribution - (any)
#   biddingModel - BiddingModel
#   broadMatchBid - Bid
#   cashBackInfo - CashBackInfo
#   contentMatchBid - Bid
#   endDate - Date
#   exactMatchBid - Bid
#   id - SOAP::SOAPLong
#   languageAndRegion - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phraseMatchBid - Bid
#   pricingModel - PricingModel
#   startDate - Date
#   status - AdGroupStatus
class AdGroupInfo
  attr_accessor :adDistribution
  attr_accessor :biddingModel
  attr_accessor :broadMatchBid
  attr_accessor :cashBackInfo
  attr_accessor :contentMatchBid
  attr_accessor :endDate
  attr_accessor :exactMatchBid
  attr_accessor :id
  attr_accessor :languageAndRegion
  attr_accessor :name
  attr_accessor :phraseMatchBid
  attr_accessor :pricingModel
  attr_accessor :startDate
  attr_accessor :status

  def initialize(adDistribution = nil, biddingModel = nil, broadMatchBid = nil, cashBackInfo = nil, contentMatchBid = nil, endDate = nil, exactMatchBid = nil, id = nil, languageAndRegion = nil, name = nil, phraseMatchBid = nil, pricingModel = nil, startDate = nil, status = nil)
    @adDistribution = adDistribution
    @biddingModel = biddingModel
    @broadMatchBid = broadMatchBid
    @cashBackInfo = cashBackInfo
    @contentMatchBid = contentMatchBid
    @endDate = endDate
    @exactMatchBid = exactMatchBid
    @id = id
    @languageAndRegion = languageAndRegion
    @name = name
    @phraseMatchBid = phraseMatchBid
    @pricingModel = pricingModel
    @startDate = startDate
    @status = status
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdGroupNegativeKeywords
class ArrayOfAdGroupNegativeKeywords < ::Array
end

# {https://adcenter.microsoft.com/v7}AdGroupNegativeKeywords
#   adGroupId - SOAP::SOAPLong
#   negativeKeywords - ArrayOfstring
class AdGroupNegativeKeywords
  attr_accessor :adGroupId
  attr_accessor :negativeKeywords

  def initialize(adGroupId = nil, negativeKeywords = nil)
    @adGroupId = adGroupId
    @negativeKeywords = negativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}Target
#   age - AgeTarget
#   behavior - BehavioralTarget
#   day - DayTarget
#   device - DeviceTarget
#   gender - GenderTarget
#   hour - HourTarget
#   id - SOAP::SOAPLong
#   isLibraryTarget - SOAP::SOAPBoolean
#   location - LocationTarget
#   name - SOAP::SOAPString
#   segment - SegmentTarget
class Target
  attr_accessor :age
  attr_accessor :behavior
  attr_accessor :day
  attr_accessor :device
  attr_accessor :gender
  attr_accessor :hour
  attr_accessor :id
  attr_accessor :isLibraryTarget
  attr_accessor :location
  attr_accessor :name
  attr_accessor :segment

  def initialize(age = nil, behavior = nil, day = nil, device = nil, gender = nil, hour = nil, id = nil, isLibraryTarget = nil, location = nil, name = nil, segment = nil)
    @age = age
    @behavior = behavior
    @day = day
    @device = device
    @gender = gender
    @hour = hour
    @id = id
    @isLibraryTarget = isLibraryTarget
    @location = location
    @name = name
    @segment = segment
  end
end

# {https://adcenter.microsoft.com/v7}AgeTarget
#   bids - ArrayOfAgeTargetBid
class AgeTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAgeTargetBid
class ArrayOfAgeTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}AgeTargetBid
#   age - AgeRange
#   incrementalBid - IncrementalBidPercentage
class AgeTargetBid
  attr_accessor :age
  attr_accessor :incrementalBid

  def initialize(age = nil, incrementalBid = nil)
    @age = age
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}BehavioralTarget
#   bids - ArrayOfBehavioralTargetBid
class BehavioralTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBehavioralTargetBid
class ArrayOfBehavioralTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}BehavioralTargetBid
#   behavioralName - SOAP::SOAPString
#   incrementalBid - IncrementalBidPercentage
class BehavioralTargetBid
  attr_accessor :behavioralName
  attr_accessor :incrementalBid

  def initialize(behavioralName = nil, incrementalBid = nil)
    @behavioralName = behavioralName
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}DayTarget
#   bids - ArrayOfDayTargetBid
#   targetAllDays - SOAP::SOAPBoolean
class DayTarget
  attr_accessor :bids
  attr_accessor :targetAllDays

  def initialize(bids = nil, targetAllDays = nil)
    @bids = bids
    @targetAllDays = targetAllDays
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfDayTargetBid
class ArrayOfDayTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}DayTargetBid
#   day - Day
#   incrementalBid - IncrementalBidPercentage
class DayTargetBid
  attr_accessor :day
  attr_accessor :incrementalBid

  def initialize(day = nil, incrementalBid = nil)
    @day = day
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}DeviceTarget
#   devices - ArrayOfDeviceType
class DeviceTarget
  attr_accessor :devices

  def initialize(devices = nil)
    @devices = devices
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfDeviceType
class ArrayOfDeviceType < ::Array
end

# {https://adcenter.microsoft.com/v7}GenderTarget
#   bids - ArrayOfGenderTargetBid
class GenderTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfGenderTargetBid
class ArrayOfGenderTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}GenderTargetBid
#   gender - GenderType
#   incrementalBid - IncrementalBidPercentage
class GenderTargetBid
  attr_accessor :gender
  attr_accessor :incrementalBid

  def initialize(gender = nil, incrementalBid = nil)
    @gender = gender
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}HourTarget
#   bids - ArrayOfHourTargetBid
#   targetAllHours - SOAP::SOAPBoolean
class HourTarget
  attr_accessor :bids
  attr_accessor :targetAllHours

  def initialize(bids = nil, targetAllHours = nil)
    @bids = bids
    @targetAllHours = targetAllHours
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfHourTargetBid
class ArrayOfHourTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}HourTargetBid
#   hour - HourRange
#   incrementalBid - IncrementalBidPercentage
class HourTargetBid
  attr_accessor :hour
  attr_accessor :incrementalBid

  def initialize(hour = nil, incrementalBid = nil)
    @hour = hour
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}LocationTarget
#   businessTarget - BusinessTarget
#   cityTarget - CityTarget
#   countryTarget - CountryTarget
#   metroAreaTarget - MetroAreaTarget
#   radiusTarget - RadiusTarget
#   stateTarget - StateTarget
#   targetAllLocations - SOAP::SOAPBoolean
class LocationTarget
  attr_accessor :businessTarget
  attr_accessor :cityTarget
  attr_accessor :countryTarget
  attr_accessor :metroAreaTarget
  attr_accessor :radiusTarget
  attr_accessor :stateTarget
  attr_accessor :targetAllLocations

  def initialize(businessTarget = nil, cityTarget = nil, countryTarget = nil, metroAreaTarget = nil, radiusTarget = nil, stateTarget = nil, targetAllLocations = nil)
    @businessTarget = businessTarget
    @cityTarget = cityTarget
    @countryTarget = countryTarget
    @metroAreaTarget = metroAreaTarget
    @radiusTarget = radiusTarget
    @stateTarget = stateTarget
    @targetAllLocations = targetAllLocations
  end
end

# {https://adcenter.microsoft.com/v7}BusinessTarget
#   bids - ArrayOfBusinessTargetBid
class BusinessTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBusinessTargetBid
class ArrayOfBusinessTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}BusinessTargetBid
#   businessId - SOAP::SOAPLong
#   incrementalBid - IncrementalBidPercentage
#   radius - SOAP::SOAPInt
class BusinessTargetBid
  attr_accessor :businessId
  attr_accessor :incrementalBid
  attr_accessor :radius

  def initialize(businessId = nil, incrementalBid = nil, radius = nil)
    @businessId = businessId
    @incrementalBid = incrementalBid
    @radius = radius
  end
end

# {https://adcenter.microsoft.com/v7}CityTarget
#   bids - ArrayOfCityTargetBid
class CityTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCityTargetBid
class ArrayOfCityTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}CityTargetBid
#   city - SOAP::SOAPString
#   incrementalBid - IncrementalBidPercentage
class CityTargetBid
  attr_accessor :city
  attr_accessor :incrementalBid

  def initialize(city = nil, incrementalBid = nil)
    @city = city
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}CountryTarget
#   bids - ArrayOfCountryTargetBid
class CountryTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCountryTargetBid
class ArrayOfCountryTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}CountryTargetBid
#   countryAndRegion - SOAP::SOAPString
#   incrementalBid - IncrementalBidPercentage
class CountryTargetBid
  attr_accessor :countryAndRegion
  attr_accessor :incrementalBid

  def initialize(countryAndRegion = nil, incrementalBid = nil)
    @countryAndRegion = countryAndRegion
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v7}MetroAreaTarget
#   bids - ArrayOfMetroAreaTargetBid
class MetroAreaTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfMetroAreaTargetBid
class ArrayOfMetroAreaTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}MetroAreaTargetBid
#   incrementalBid - IncrementalBidPercentage
#   metroArea - SOAP::SOAPString
class MetroAreaTargetBid
  attr_accessor :incrementalBid
  attr_accessor :metroArea

  def initialize(incrementalBid = nil, metroArea = nil)
    @incrementalBid = incrementalBid
    @metroArea = metroArea
  end
end

# {https://adcenter.microsoft.com/v7}RadiusTarget
#   bids - ArrayOfRadiusTargetBid
class RadiusTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfRadiusTargetBid
class ArrayOfRadiusTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}RadiusTargetBid
#   incrementalBid - IncrementalBidPercentage
#   latitudeDegrees - SOAP::SOAPDouble
#   longitudeDegrees - SOAP::SOAPDouble
#   radius - SOAP::SOAPInt
class RadiusTargetBid
  attr_accessor :incrementalBid
  attr_accessor :latitudeDegrees
  attr_accessor :longitudeDegrees
  attr_accessor :radius

  def initialize(incrementalBid = nil, latitudeDegrees = nil, longitudeDegrees = nil, radius = nil)
    @incrementalBid = incrementalBid
    @latitudeDegrees = latitudeDegrees
    @longitudeDegrees = longitudeDegrees
    @radius = radius
  end
end

# {https://adcenter.microsoft.com/v7}StateTarget
#   bids - ArrayOfStateTargetBid
class StateTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfStateTargetBid
class ArrayOfStateTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}StateTargetBid
#   incrementalBid - IncrementalBidPercentage
#   state - SOAP::SOAPString
class StateTargetBid
  attr_accessor :incrementalBid
  attr_accessor :state

  def initialize(incrementalBid = nil, state = nil)
    @incrementalBid = incrementalBid
    @state = state
  end
end

# {https://adcenter.microsoft.com/v7}SegmentTarget
#   bids - ArrayOfSegmentTargetBid
class SegmentTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfSegmentTargetBid
class ArrayOfSegmentTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v7}SegmentTargetBid
#   cashBackInfo - CashBackInfo
#   incrementalBid - IncrementalBidPercentage
#   param1 - SOAP::SOAPString
#   param2 - SOAP::SOAPString
#   param3 - SOAP::SOAPString
#   segmentId - SOAP::SOAPLong
#   segmentParam1 - SOAP::SOAPString
#   segmentParam2 - SOAP::SOAPString
class SegmentTargetBid
  attr_accessor :cashBackInfo
  attr_accessor :incrementalBid
  attr_accessor :param1
  attr_accessor :param2
  attr_accessor :param3
  attr_accessor :segmentId
  attr_accessor :segmentParam1
  attr_accessor :segmentParam2

  def initialize(cashBackInfo = nil, incrementalBid = nil, param1 = nil, param2 = nil, param3 = nil, segmentId = nil, segmentParam1 = nil, segmentParam2 = nil)
    @cashBackInfo = cashBackInfo
    @incrementalBid = incrementalBid
    @param1 = param1
    @param2 = param2
    @param3 = param3
    @segmentId = segmentId
    @segmentParam1 = segmentParam1
    @segmentParam2 = segmentParam2
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfTarget
class ArrayOfTarget < ::Array
end

# {https://adcenter.microsoft.com/v7}ArrayOfTargetInfo
class ArrayOfTargetInfo < ::Array
end

# {https://adcenter.microsoft.com/v7}TargetInfo
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
class TargetInfo
  attr_accessor :id
  attr_accessor :name

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
  end
end

# # {https://adapi.microsoft.com}ApplicationFault
# #   trackingId - SOAP::SOAPString
# class ApplicationFault
#   attr_accessor :trackingId
# 
#   def initialize(trackingId = nil)
#     @trackingId = trackingId
#   end
# end

# {https://adcenter.microsoft.com/v7}ApiFaultDetail
#   trackingId - SOAP::SOAPString
#   batchErrors - ArrayOfBatchError
#   operationErrors - ArrayOfOperationError
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

# {https://adcenter.microsoft.com/v7}EditorialApiFaultDetail
#   trackingId - SOAP::SOAPString
#   batchErrors - ArrayOfBatchError
#   editorialErrors - ArrayOfEditorialError
#   operationErrors - ArrayOfOperationError
class EditorialApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :batchErrors
  attr_accessor :editorialErrors
  attr_accessor :operationErrors

  def initialize(trackingId = nil, batchErrors = nil, editorialErrors = nil, operationErrors = nil)
    @trackingId = trackingId
    @batchErrors = batchErrors
    @editorialErrors = editorialErrors
    @operationErrors = operationErrors
  end
end

# # {https://adapi.microsoft.com}AdApiFaultDetail
# #   trackingId - SOAP::SOAPString
# #   errors - ArrayOfAdApiError
# class AdApiFaultDetail < ::StandardError
#   attr_accessor :trackingId
#   attr_accessor :errors
# 
#   def initialize(trackingId = nil, errors = nil)
#     @trackingId = trackingId
#     @errors = errors
#   end
# end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# # {https://adapi.microsoft.com}AdApiError
# #   code - SOAP::SOAPInt
# #   detail - SOAP::SOAPString
# #   errorCode - SOAP::SOAPString
# #   message - SOAP::SOAPString
# class AdApiError
#   attr_accessor :code
#   attr_accessor :detail
#   attr_accessor :errorCode
#   attr_accessor :message
# 
#   def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#     @code = code
#     @detail = detail
#     @errorCode = errorCode
#     @message = message
#   end
# end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfbase64Binary
class ArrayOfbase64Binary < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfAdGroupNetwork
class ArrayOfAdGroupNetwork < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AdGroupNetwork
#   adGroupId - SOAP::SOAPLong
#   network - Network
class AdGroupNetwork
  attr_accessor :adGroupId
  attr_accessor :network

  def initialize(adGroupId = nil, network = nil)
    @adGroupId = adGroupId
    @network = network
  end
end

# {https://adcenter.microsoft.com/v7}AdEditorialStatus
class AdEditorialStatus < ::String
  Active = AdEditorialStatus.new("Active")
  Disapproved = AdEditorialStatus.new("Disapproved")
  Inactive = AdEditorialStatus.new("Inactive")
end

# {https://adcenter.microsoft.com/v7}AdStatus
class AdStatus < ::String
  Active = AdStatus.new("Active")
  Deleted = AdStatus.new("Deleted")
  Inactive = AdStatus.new("Inactive")
  Paused = AdStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}AdType
class AdType < ::String
  Image = AdType.new("Image")
  Mobile = AdType.new("Mobile")
  RichSearch = AdType.new("RichSearch")
  Text = AdType.new("Text")
end

# {https://adcenter.microsoft.com/v7}BehavioralBidStatus
class BehavioralBidStatus < ::String
  Active = BehavioralBidStatus.new("Active")
  Deleted = BehavioralBidStatus.new("Deleted")
  Inactive = BehavioralBidStatus.new("Inactive")
  Paused = BehavioralBidStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}Language
class Language < ::String
  English = Language.new("English")
  French = Language.new("French")
end

# {https://adcenter.microsoft.com/v7}Network
class Network < ::String
  OwnedAndOperatedAndSyndicatedSearch = Network.new("OwnedAndOperatedAndSyndicatedSearch")
  OwnedAndOperatedOnly = Network.new("OwnedAndOperatedOnly")
  SyndicatedSearchOnly = Network.new("SyndicatedSearchOnly")
end

# {https://adcenter.microsoft.com/v7}CashBackStatus
class CashBackStatus < ::String
  Disable = CashBackStatus.new("Disable")
  Enable = CashBackStatus.new("Enable")
end

# {https://adcenter.microsoft.com/v7}KeywordEditorialStatus
class KeywordEditorialStatus < ::String
  Active = KeywordEditorialStatus.new("Active")
  Disapproved = KeywordEditorialStatus.new("Disapproved")
  Inactive = KeywordEditorialStatus.new("Inactive")
end

# {https://adcenter.microsoft.com/v7}OverridePriority
class OverridePriority < ::String
  KeywordEnable = OverridePriority.new("KeywordEnable")
  KeywordPriority = OverridePriority.new("KeywordPriority")
  SegmentEnable = OverridePriority.new("SegmentEnable")
  SegmentPriority = OverridePriority.new("SegmentPriority")
end

# {https://adcenter.microsoft.com/v7}KeywordStatus
class KeywordStatus < ::String
  Active = KeywordStatus.new("Active")
  Deleted = KeywordStatus.new("Deleted")
  Inactive = KeywordStatus.new("Inactive")
  Paused = KeywordStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}PricingModel
class PricingModel < ::String
  Cpc = PricingModel.new("Cpc")
  Cpm = PricingModel.new("Cpm")
end

# {https://adcenter.microsoft.com/v7}StandardBusinessIcon
class StandardBusinessIcon < ::String
  Accommodations = StandardBusinessIcon.new("Accommodations")
  BankOrFinanceOrCurrencyExchange = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchange")
  BankOrFinanceOrCurrencyExchangeEUR = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchangeEUR")
  BankOrFinanceOrCurrencyExchangeUK = StandardBusinessIcon.new("BankOrFinanceOrCurrencyExchangeUK")
  CafeOrCoffeeShop = StandardBusinessIcon.new("CafeOrCoffeeShop")
  CarDealerOrServiceOrRental = StandardBusinessIcon.new("CarDealerOrServiceOrRental")
  FlowersOrGarden = StandardBusinessIcon.new("FlowersOrGarden")
  GroceryOrDepartmentStore = StandardBusinessIcon.new("GroceryOrDepartmentStore")
  HairdresserOrBarberOrTailor = StandardBusinessIcon.new("HairdresserOrBarberOrTailor")
  HardwareOrRepair = StandardBusinessIcon.new("HardwareOrRepair")
  HousewaresOrRealEstateOrHomeRepair = StandardBusinessIcon.new("HousewaresOrRealEstateOrHomeRepair")
  MoviesOrVideo = StandardBusinessIcon.new("MoviesOrVideo")
  PhonesOrServiceProvider = StandardBusinessIcon.new("PhonesOrServiceProvider")
  PubOrBarOrLiquor = StandardBusinessIcon.new("PubOrBarOrLiquor")
  RestaurantOrDining = StandardBusinessIcon.new("RestaurantOrDining")
  ShoppingOrBoutique = StandardBusinessIcon.new("ShoppingOrBoutique")
end

# {https://adcenter.microsoft.com/v7}BusinessGeoCodeStatus
class BusinessGeoCodeStatus < ::String
  Complete = BusinessGeoCodeStatus.new("Complete")
  Failed = BusinessGeoCodeStatus.new("Failed")
  Invalid = BusinessGeoCodeStatus.new("Invalid")
  Pending = BusinessGeoCodeStatus.new("Pending")
end

# {https://adcenter.microsoft.com/v7}Day
class Day < ::String
  Friday = Day.new("Friday")
  Monday = Day.new("Monday")
  Saturday = Day.new("Saturday")
  Sunday = Day.new("Sunday")
  Thursday = Day.new("Thursday")
  Tuesday = Day.new("Tuesday")
  Wednesday = Day.new("Wednesday")
end

# {https://adcenter.microsoft.com/v7}PaymentType
class PaymentType < ::String
  AmericanExpress = PaymentType.new("AmericanExpress")
  Cash = PaymentType.new("Cash")
  CashOnDelivery = PaymentType.new("CashOnDelivery")
  DinersClub = PaymentType.new("DinersClub")
  DirectDebit = PaymentType.new("DirectDebit")
  Invoice = PaymentType.new("Invoice")
  MasterCard = PaymentType.new("MasterCard")
  Other = PaymentType.new("Other")
  PayPal = PaymentType.new("PayPal")
  TravellersCheck = PaymentType.new("TravellersCheck")
  Visa = PaymentType.new("Visa")
end

# {https://adcenter.microsoft.com/v7}BusinessStatus
class BusinessStatus < ::String
  Active = BusinessStatus.new("Active")
  Inactive = BusinessStatus.new("Inactive")
  Pending = BusinessStatus.new("Pending")
end

# {https://adcenter.microsoft.com/v7}SitePlacementStatus
class SitePlacementStatus < ::String
  Active = SitePlacementStatus.new("Active")
  Deleted = SitePlacementStatus.new("Deleted")
  Inactive = SitePlacementStatus.new("Inactive")
  Paused = SitePlacementStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}BudgetLimitType
class BudgetLimitType < ::String
  DailyBudgetWithMaximumMonthlySpend = BudgetLimitType.new("DailyBudgetWithMaximumMonthlySpend")
  MonthlyBudgetDivideDailyAcrossMonth = BudgetLimitType.new("MonthlyBudgetDivideDailyAcrossMonth")
  MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
end

# {https://adcenter.microsoft.com/v7}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  BudgetAndManualPaused = CampaignStatus.new("BudgetAndManualPaused")
  BudgetPaused = CampaignStatus.new("BudgetPaused")
  Deleted = CampaignStatus.new("Deleted")
  Paused = CampaignStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}AdDistribution
#   contains list of AdDistribution::*
class AdDistribution < ::Array
  Content = "Content"
  Search = "Search"
end

# {https://adcenter.microsoft.com/v7}BiddingModel
class BiddingModel < ::String
  BehavioralBid = BiddingModel.new("BehavioralBid")
  Keyword = BiddingModel.new("Keyword")
  SitePlacement = BiddingModel.new("SitePlacement")
end

# {https://adcenter.microsoft.com/v7}AdGroupStatus
class AdGroupStatus < ::String
  Active = AdGroupStatus.new("Active")
  Deleted = AdGroupStatus.new("Deleted")
  Draft = AdGroupStatus.new("Draft")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v7}AgeRange
class AgeRange < ::String
  EighteenToTwentyFive = AgeRange.new("EighteenToTwentyFive")
  FiftyToSixtyFive = AgeRange.new("FiftyToSixtyFive")
  SixtyFiveAndAbove = AgeRange.new("SixtyFiveAndAbove")
  ThirtyFiveToFifty = AgeRange.new("ThirtyFiveToFifty")
  TwentyFiveToThirtyFive = AgeRange.new("TwentyFiveToThirtyFive")
end

# {https://adcenter.microsoft.com/v7}IncrementalBidPercentage
class IncrementalBidPercentage < ::String
  EightyPercent = IncrementalBidPercentage.new("EightyPercent")
  FiftyPercent = IncrementalBidPercentage.new("FiftyPercent")
  FortyPercent = IncrementalBidPercentage.new("FortyPercent")
  NegativeEightyPercent = IncrementalBidPercentage.new("NegativeEightyPercent")
  NegativeFiftyPercent = IncrementalBidPercentage.new("NegativeFiftyPercent")
  NegativeFortyPercent = IncrementalBidPercentage.new("NegativeFortyPercent")
  NegativeNinetyPercent = IncrementalBidPercentage.new("NegativeNinetyPercent")
  NegativeOneHundredPercent = IncrementalBidPercentage.new("NegativeOneHundredPercent")
  NegativeSeventyPercent = IncrementalBidPercentage.new("NegativeSeventyPercent")
  NegativeSixtyPercent = IncrementalBidPercentage.new("NegativeSixtyPercent")
  NegativeTenPercent = IncrementalBidPercentage.new("NegativeTenPercent")
  NegativeThirtyPercent = IncrementalBidPercentage.new("NegativeThirtyPercent")
  NegativeTwentyPercent = IncrementalBidPercentage.new("NegativeTwentyPercent")
  NinetyPercent = IncrementalBidPercentage.new("NinetyPercent")
  OneHundredPercent = IncrementalBidPercentage.new("OneHundredPercent")
  SeventyPercent = IncrementalBidPercentage.new("SeventyPercent")
  SixtyPercent = IncrementalBidPercentage.new("SixtyPercent")
  TenPercent = IncrementalBidPercentage.new("TenPercent")
  ThirtyPercent = IncrementalBidPercentage.new("ThirtyPercent")
  TwentyPercent = IncrementalBidPercentage.new("TwentyPercent")
  ZeroPercent = IncrementalBidPercentage.new("ZeroPercent")
end

# {https://adcenter.microsoft.com/v7}DeviceType
class DeviceType < ::String
  Computers = DeviceType.new("Computers")
  Smartphones = DeviceType.new("Smartphones")
end

# {https://adcenter.microsoft.com/v7}GenderType
class GenderType < ::String
  Female = GenderType.new("Female")
  Male = GenderType.new("Male")
end

# {https://adcenter.microsoft.com/v7}HourRange
class HourRange < ::String
  ElevenAMToTwoPM = HourRange.new("ElevenAMToTwoPM")
  ElevenPMToThreeAM = HourRange.new("ElevenPMToThreeAM")
  SevenAMToElevenAM = HourRange.new("SevenAMToElevenAM")
  SixPMToElevenPM = HourRange.new("SixPMToElevenPM")
  ThreeAMToSevenAM = HourRange.new("ThreeAMToSevenAM")
  TwoPMToSixPM = HourRange.new("TwoPMToSixPM")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AdComponent
class AdComponent < ::String
  Ad = AdComponent.new("Ad")
  AdDescription = AdComponent.new("AdDescription")
  AdTitle = AdComponent.new("AdTitle")
  AdTitleDescription = AdComponent.new("AdTitleDescription")
  AltText = AdComponent.new("AltText")
  Asset = AdComponent.new("Asset")
  Association = AdComponent.new("Association")
  Audio = AdComponent.new("Audio")
  BiddingKeyword = AdComponent.new("BiddingKeyword")
  BusinessName = AdComponent.new("BusinessName")
  CAsset = AdComponent.new("CAsset")
  CashbackTextParam = AdComponent.new("CashbackTextParam")
  Destination = AdComponent.new("Destination")
  DestinationUrl = AdComponent.new("DestinationUrl")
  DisplayUrl = AdComponent.new("DisplayUrl")
  Flash = AdComponent.new("Flash")
  Image = AdComponent.new("Image")
  Keyword = AdComponent.new("Keyword")
  KeywordParam1 = AdComponent.new("KeywordParam1")
  KeywordParam2 = AdComponent.new("KeywordParam2")
  KeywordParam3 = AdComponent.new("KeywordParam3")
  LandingUrl = AdComponent.new("LandingUrl")
  Order = AdComponent.new("Order")
  PhoneNumber = AdComponent.new("PhoneNumber")
  Script = AdComponent.new("Script")
  SiteDomain = AdComponent.new("SiteDomain")
  Unknown = AdComponent.new("Unknown")
  Video = AdComponent.new("Video")
end

# {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBids - ArrayOfBehavioralBid
class UpdateBehavioralBidsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBids

  def initialize(adGroupId = nil, behavioralBids = nil)
    @adGroupId = adGroupId
    @behavioralBids = behavioralBids
  end
end

# {https://adcenter.microsoft.com/v7}UpdateBehavioralBidsResponse
class UpdateBehavioralBidsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetCustomSegmentsRequest
class GetCustomSegmentsRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetCustomSegmentsResponse
#   customSegments - ArrayOfSegment
class GetCustomSegmentsResponse
  attr_accessor :customSegments

  def initialize(customSegments = nil)
    @customSegments = customSegments
  end
end

# {https://adcenter.microsoft.com/v7}AddSegmentsRequest
#   segments - ArrayOfSegment
class AddSegmentsRequest
  attr_accessor :segments

  def initialize(segments = nil)
    @segments = segments
  end
end

# {https://adcenter.microsoft.com/v7}AddSegmentsResponse
#   segmentIds - ArrayOflong
class AddSegmentsResponse
  attr_accessor :segmentIds

  def initialize(segmentIds = nil)
    @segmentIds = segmentIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteSegmentsRequest
#   segmentIds - ArrayOflong
class DeleteSegmentsRequest
  attr_accessor :segmentIds

  def initialize(segmentIds = nil)
    @segmentIds = segmentIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteSegmentsResponse
class DeleteSegmentsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetSegmentsByIdsRequest
#   segmentIds - ArrayOflong
class GetSegmentsByIdsRequest
  attr_accessor :segmentIds

  def initialize(segmentIds = nil)
    @segmentIds = segmentIds
  end
end

# {https://adcenter.microsoft.com/v7}GetSegmentsByIdsResponse
#   segments - ArrayOfSegment
class GetSegmentsByIdsResponse
  attr_accessor :segments

  def initialize(segments = nil)
    @segments = segments
  end
end

# {https://adcenter.microsoft.com/v7}GetSegmentsRequest
class GetSegmentsRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetSegmentsResponse
#   segments - ArrayOfSegment
class GetSegmentsResponse
  attr_accessor :segments

  def initialize(segments = nil)
    @segments = segments
  end
end

# {https://adcenter.microsoft.com/v7}SetUsersToSegmentsRequest
#   segmentId - SOAP::SOAPLong
#   userHash - ArrayOfbase64Binary
class SetUsersToSegmentsRequest
  attr_accessor :segmentId
  attr_accessor :userHash

  def initialize(segmentId = nil, userHash = nil)
    @segmentId = segmentId
    @userHash = userHash
  end
end

# {https://adcenter.microsoft.com/v7}SetUsersToSegmentsResponse
class SetUsersToSegmentsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentRequest
#   userHash - ArrayOfbase64Binary
class DeleteUsersFromSegmentRequest
  attr_accessor :userHash

  def initialize(userHash = nil)
    @userHash = userHash
  end
end

# {https://adcenter.microsoft.com/v7}DeleteUsersFromSegmentResponse
class DeleteUsersFromSegmentResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetNormalizedStringsRequest
#   strings - ArrayOfstring
#   language - Language
class GetNormalizedStringsRequest
  attr_accessor :strings
  attr_accessor :language

  def initialize(strings = nil, language = nil)
    @strings = strings
    @language = language
  end
end

# {https://adcenter.microsoft.com/v7}GetNormalizedStringsResponse
#   normalizedStrings - ArrayOfstring
class GetNormalizedStringsResponse
  attr_accessor :normalizedStrings

  def initialize(normalizedStrings = nil)
    @normalizedStrings = normalizedStrings
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsRequest
#   keywordIds - ArrayOflong
#   accountId - SOAP::SOAPLong
class GetKeywordEditorialReasonsByIdsRequest
  attr_accessor :keywordIds
  attr_accessor :accountId

  def initialize(keywordIds = nil, accountId = nil)
    @keywordIds = keywordIds
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordEditorialReasonsByIdsResponse
#   editorialReasons - ArrayOfEditorialReasonCollection
class GetKeywordEditorialReasonsByIdsResponse
  attr_accessor :editorialReasons

  def initialize(editorialReasons = nil)
    @editorialReasons = editorialReasons
  end
end

# {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsRequest
#   adIds - ArrayOflong
#   accountId - SOAP::SOAPLong
class GetAdEditorialReasonsByIdsRequest
  attr_accessor :adIds
  attr_accessor :accountId

  def initialize(adIds = nil, accountId = nil)
    @adIds = adIds
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v7}GetAdEditorialReasonsByIdsResponse
#   editorialReasons - ArrayOfEditorialReasonCollection
class GetAdEditorialReasonsByIdsResponse
  attr_accessor :editorialReasons

  def initialize(editorialReasons = nil)
    @editorialReasons = editorialReasons
  end
end

# {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class GetNetworksByAdGroupIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}GetNetworksByAdGroupIdsResponse
#   adGroupNetworks - ArrayOfAdGroupNetwork
class GetNetworksByAdGroupIdsResponse
  attr_accessor :adGroupNetworks

  def initialize(adGroupNetworks = nil)
    @adGroupNetworks = adGroupNetworks
  end
end

# {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupNetworks - ArrayOfAdGroupNetwork
class SetNetworksToAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupNetworks

  def initialize(campaignId = nil, adGroupNetworks = nil)
    @campaignId = campaignId
    @adGroupNetworks = adGroupNetworks
  end
end

# {https://adcenter.microsoft.com/v7}SetNetworksToAdGroupsResponse
class SetNetworksToAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddAdsRequest
#   adGroupId - SOAP::SOAPLong
#   ads - ArrayOfAd
class AddAdsRequest
  attr_accessor :adGroupId
  attr_accessor :ads

  def initialize(adGroupId = nil, ads = nil)
    @adGroupId = adGroupId
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v7}AddAdsResponse
#   adIds - ArrayOflong
class AddAdsResponse
  attr_accessor :adIds

  def initialize(adIds = nil)
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - ArrayOflong
class DeleteAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteAdsResponse
class DeleteAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusRequest
#   adGroupId - SOAP::SOAPLong
#   editorialStatus - AdEditorialStatus
class GetAdsByEditorialStatusRequest
  attr_accessor :adGroupId
  attr_accessor :editorialStatus

  def initialize(adGroupId = nil, editorialStatus = nil)
    @adGroupId = adGroupId
    @editorialStatus = editorialStatus
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByEditorialStatusResponse
#   ads - ArrayOfAd
class GetAdsByEditorialStatusResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - ArrayOflong
class GetAdsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByIdsResponse
#   ads - ArrayOfAd
class GetAdsByIdsResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetAdsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}GetAdsByAdGroupIdResponse
#   ads - ArrayOfAd
class GetAdsByAdGroupIdResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v7}UpdateAdsRequest
#   adGroupId - SOAP::SOAPLong
#   ads - ArrayOfAd
class UpdateAdsRequest
  attr_accessor :adGroupId
  attr_accessor :ads

  def initialize(adGroupId = nil, ads = nil)
    @adGroupId = adGroupId
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v7}UpdateAdsResponse
class UpdateAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}PauseAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - ArrayOflong
class PauseAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseAdsResponse
class PauseAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - ArrayOflong
class ResumeAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeAdsResponse
class ResumeAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywords - ArrayOfKeyword
class AddKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywords

  def initialize(adGroupId = nil, keywords = nil)
    @adGroupId = adGroupId
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}AddKeywordsResponse
#   keywordIds - ArrayOflong
class AddKeywordsResponse
  attr_accessor :keywordIds

  def initialize(keywordIds = nil)
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - ArrayOflong
class DeleteKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteKeywordsResponse
class DeleteKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusRequest
#   adGroupId - SOAP::SOAPLong
#   editorialStatus - KeywordEditorialStatus
class GetKeywordsByEditorialStatusRequest
  attr_accessor :adGroupId
  attr_accessor :editorialStatus

  def initialize(adGroupId = nil, editorialStatus = nil)
    @adGroupId = adGroupId
    @editorialStatus = editorialStatus
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByEditorialStatusResponse
#   keywords - ArrayOfKeyword
class GetKeywordsByEditorialStatusResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - ArrayOflong
class GetKeywordsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByIdsResponse
#   keywords - ArrayOfKeyword
class GetKeywordsByIdsResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetKeywordsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordsByAdGroupIdResponse
#   keywords - ArrayOfKeyword
class GetKeywordsByAdGroupIdResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}PauseKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - ArrayOflong
class PauseKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseKeywordsResponse
class PauseKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - ArrayOflong
class ResumeKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeKeywordsResponse
class ResumeKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}UpdateKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywords - ArrayOfKeyword
class UpdateKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywords

  def initialize(adGroupId = nil, keywords = nil)
    @adGroupId = adGroupId
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}UpdateKeywordsResponse
class UpdateKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsRequest
#   accountId - SOAP::SOAPLong
#   languageAndRegion - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   keywordBids - ArrayOfKeywordBid
#   pricingModel - PricingModel
class GetKeywordEstimatesByBidsRequest
  attr_accessor :accountId
  attr_accessor :languageAndRegion
  attr_accessor :currency
  attr_accessor :keywordBids
  attr_accessor :pricingModel

  def initialize(accountId = nil, languageAndRegion = nil, currency = nil, keywordBids = nil, pricingModel = nil)
    @accountId = accountId
    @languageAndRegion = languageAndRegion
    @currency = currency
    @keywordBids = keywordBids
    @pricingModel = pricingModel
  end
end

# {https://adcenter.microsoft.com/v7}GetKeywordEstimatesByBidsResponse
#   keywordEstimates - ArrayOfKeywordEstimate
class GetKeywordEstimatesByBidsResponse
  attr_accessor :keywordEstimates

  def initialize(keywordEstimates = nil)
    @keywordEstimates = keywordEstimates
  end
end

# {https://adcenter.microsoft.com/v7}AddBusinessesRequest
#   businesses - ArrayOfBusiness
class AddBusinessesRequest
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v7}AddBusinessesResponse
#   businessIds - ArrayOflong
class AddBusinessesResponse
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v7}UpdateBusinessesRequest
#   businesses - ArrayOfBusiness
class UpdateBusinessesRequest
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v7}UpdateBusinessesResponse
class UpdateBusinessesResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteBusinessesRequest
#   businessIds - ArrayOflong
class DeleteBusinessesRequest
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteBusinessesResponse
class DeleteBusinessesResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetBusinessesInfoRequest
class GetBusinessesInfoRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetBusinessesInfoResponse
#   businessesInfo - ArrayOfBusinessInfo
class GetBusinessesInfoResponse
  attr_accessor :businessesInfo

  def initialize(businessesInfo = nil)
    @businessesInfo = businessesInfo
  end
end

# {https://adcenter.microsoft.com/v7}GetBusinessesByIdsRequest
#   businessIds - ArrayOflong
class GetBusinessesByIdsRequest
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v7}GetBusinessesByIdsResponse
#   businesses - ArrayOfBusiness
class GetBusinessesByIdsResponse
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v7}AddSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacements - ArrayOfSitePlacement
class AddSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacements

  def initialize(adGroupId = nil, sitePlacements = nil)
    @adGroupId = adGroupId
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v7}AddSitePlacementsResponse
#   sitePlacementIds - ArrayOflong
class AddSitePlacementsResponse
  attr_accessor :sitePlacementIds

  def initialize(sitePlacementIds = nil)
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - ArrayOflong
class DeleteSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteSitePlacementsResponse
class DeleteSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - ArrayOflong
class GetSitePlacementsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v7}GetSitePlacementsByIdsResponse
#   sitePlacements - ArrayOfSitePlacement
class GetSitePlacementsByIdsResponse
  attr_accessor :sitePlacements

  def initialize(sitePlacements = nil)
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetSitePlacementsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}GetSitePlacementsByAdGroupIdResponse
#   sitePlacements - ArrayOfSitePlacement
class GetSitePlacementsByAdGroupIdResponse
  attr_accessor :sitePlacements

  def initialize(sitePlacements = nil)
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v7}PauseSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - ArrayOflong
class PauseSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseSitePlacementsResponse
class PauseSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - ArrayOflong
class ResumeSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeSitePlacementsResponse
class ResumeSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}UpdateSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacements - ArrayOfSitePlacement
class UpdateSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacements

  def initialize(adGroupId = nil, sitePlacements = nil)
    @adGroupId = adGroupId
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v7}UpdateSitePlacementsResponse
class UpdateSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsRequest
#   urls - ArrayOfstring
class GetPlacementDetailsForUrlsRequest
  attr_accessor :urls

  def initialize(urls = nil)
    @urls = urls
  end
end

# {https://adcenter.microsoft.com/v7}GetPlacementDetailsForUrlsResponse
#   placementDetails - ArrayOfArrayOfPlacementDetail
class GetPlacementDetailsForUrlsResponse
  attr_accessor :placementDetails

  def initialize(placementDetails = nil)
    @placementDetails = placementDetails
  end
end

# {https://adcenter.microsoft.com/v7}AddBehavioralBidsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBids - ArrayOfBehavioralBid
class AddBehavioralBidsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBids

  def initialize(adGroupId = nil, behavioralBids = nil)
    @adGroupId = adGroupId
    @behavioralBids = behavioralBids
  end
end

# {https://adcenter.microsoft.com/v7}AddBehavioralBidsResponse
#   behavioralBidIds - ArrayOflong
class AddBehavioralBidsResponse
  attr_accessor :behavioralBidIds

  def initialize(behavioralBidIds = nil)
    @behavioralBidIds = behavioralBidIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBidIds - ArrayOflong
class DeleteBehavioralBidsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBidIds

  def initialize(adGroupId = nil, behavioralBidIds = nil)
    @adGroupId = adGroupId
    @behavioralBidIds = behavioralBidIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteBehavioralBidsResponse
class DeleteBehavioralBidsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBidIds - ArrayOflong
class GetBehavioralBidsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBidIds

  def initialize(adGroupId = nil, behavioralBidIds = nil)
    @adGroupId = adGroupId
    @behavioralBidIds = behavioralBidIds
  end
end

# {https://adcenter.microsoft.com/v7}GetBehavioralBidsByIdsResponse
#   behavioralBids - ArrayOfBehavioralBid
class GetBehavioralBidsByIdsResponse
  attr_accessor :behavioralBids

  def initialize(behavioralBids = nil)
    @behavioralBids = behavioralBids
  end
end

# {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetBehavioralBidsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}GetBehavioralBidsByAdGroupIdResponse
#   behavioralBids - ArrayOfBehavioralBid
class GetBehavioralBidsByAdGroupIdResponse
  attr_accessor :behavioralBids

  def initialize(behavioralBids = nil)
    @behavioralBids = behavioralBids
  end
end

# {https://adcenter.microsoft.com/v7}PauseBehavioralBidsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBidIds - ArrayOflong
class PauseBehavioralBidsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBidIds

  def initialize(adGroupId = nil, behavioralBidIds = nil)
    @adGroupId = adGroupId
    @behavioralBidIds = behavioralBidIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseBehavioralBidsResponse
class PauseBehavioralBidsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsRequest
#   adGroupId - SOAP::SOAPLong
#   behavioralBidIds - ArrayOflong
class ResumeBehavioralBidsRequest
  attr_accessor :adGroupId
  attr_accessor :behavioralBidIds

  def initialize(adGroupId = nil, behavioralBidIds = nil)
    @adGroupId = adGroupId
    @behavioralBidIds = behavioralBidIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeBehavioralBidsResponse
class ResumeBehavioralBidsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaigns - ArrayOfCampaign
class AddCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaigns

  def initialize(accountId = nil, campaigns = nil)
    @accountId = accountId
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}AddCampaignsResponse
#   campaignIds - ArrayOflong
class AddCampaignsResponse
  attr_accessor :campaignIds

  def initialize(campaignIds = nil)
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdRequest
#   accountId - SOAP::SOAPLong
class GetCampaignsByAccountIdRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsByAccountIdResponse
#   campaigns - ArrayOfCampaign
class GetCampaignsByAccountIdResponse
  attr_accessor :campaigns

  def initialize(campaigns = nil)
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsByIdsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - ArrayOflong
class GetCampaignsByIdsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsByIdsResponse
#   campaigns - ArrayOfCampaign
class GetCampaignsByIdsResponse
  attr_accessor :campaigns

  def initialize(campaigns = nil)
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}PauseCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - ArrayOflong
class PauseCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseCampaignsResponse
class PauseCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - ArrayOflong
class ResumeCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeCampaignsResponse
class ResumeCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - ArrayOflong
class DeleteCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteCampaignsResponse
class DeleteCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}UpdateCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaigns - ArrayOfCampaign
class UpdateCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaigns

  def initialize(accountId = nil, campaigns = nil)
    @accountId = accountId
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}UpdateCampaignsResponse
class UpdateCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdRequest
#   accountId - SOAP::SOAPLong
class GetCampaignsInfoByAccountIdRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v7}GetCampaignsInfoByAccountIdResponse
#   campaignsInfo - ArrayOfCampaignInfo
class GetCampaignsInfoByAccountIdResponse
  attr_accessor :campaignsInfo

  def initialize(campaignsInfo = nil)
    @campaignsInfo = campaignsInfo
  end
end

# {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - ArrayOflong
class GetNegativeKeywordsByCampaignIdsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByCampaignIdsResponse
#   campaignNegativeKeywords - ArrayOfCampaignNegativeKeywords
class GetNegativeKeywordsByCampaignIdsResponse
  attr_accessor :campaignNegativeKeywords

  def initialize(campaignNegativeKeywords = nil)
    @campaignNegativeKeywords = campaignNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignNegativeKeywords - ArrayOfCampaignNegativeKeywords
class SetNegativeKeywordsToCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignNegativeKeywords

  def initialize(accountId = nil, campaignNegativeKeywords = nil)
    @accountId = accountId
    @campaignNegativeKeywords = campaignNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToCampaignsResponse
class SetNegativeKeywordsToCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroups - ArrayOfAdGroup
class AddAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroups

  def initialize(campaignId = nil, adGroups = nil)
    @campaignId = campaignId
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v7}AddAdGroupsResponse
#   adGroupIds - ArrayOflong
class AddAdGroupsResponse
  attr_accessor :adGroupIds

  def initialize(adGroupIds = nil)
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class DeleteAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteAdGroupsResponse
class DeleteAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class GetAdGroupsByIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsByIdsResponse
#   adGroups - ArrayOfAdGroup
class GetAdGroupsByIdsResponse
  attr_accessor :adGroups

  def initialize(adGroups = nil)
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdRequest
#   campaignId - SOAP::SOAPLong
class GetAdGroupsByCampaignIdRequest
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsByCampaignIdResponse
#   adGroups - ArrayOfAdGroup
class GetAdGroupsByCampaignIdResponse
  attr_accessor :adGroups

  def initialize(adGroups = nil)
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v7}PauseAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class PauseAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}PauseAdGroupsResponse
class PauseAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}ResumeAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class ResumeAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}ResumeAdGroupsResponse
class ResumeAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalRequest
#   adGroupId - SOAP::SOAPLong
class SubmitAdGroupForApprovalRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}SubmitAdGroupForApprovalResponse
class SubmitAdGroupForApprovalResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}UpdateAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroups - ArrayOfAdGroup
class UpdateAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroups

  def initialize(campaignId = nil, adGroups = nil)
    @campaignId = campaignId
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v7}UpdateAdGroupsResponse
class UpdateAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdRequest
#   campaignId - SOAP::SOAPLong
class GetAdGroupsInfoByCampaignIdRequest
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v7}GetAdGroupsInfoByCampaignIdResponse
#   adGroupsInfo - ArrayOfAdGroupInfo
class GetAdGroupsInfoByCampaignIdResponse
  attr_accessor :adGroupsInfo

  def initialize(adGroupsInfo = nil)
    @adGroupsInfo = adGroupsInfo
  end
end

# {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - ArrayOflong
class GetNegativeKeywordsByAdGroupIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}GetNegativeKeywordsByAdGroupIdsResponse
#   adGroupNegativeKeywords - ArrayOfAdGroupNegativeKeywords
class GetNegativeKeywordsByAdGroupIdsResponse
  attr_accessor :adGroupNegativeKeywords

  def initialize(adGroupNegativeKeywords = nil)
    @adGroupNegativeKeywords = adGroupNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupNegativeKeywords - ArrayOfAdGroupNegativeKeywords
class SetNegativeKeywordsToAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupNegativeKeywords

  def initialize(campaignId = nil, adGroupNegativeKeywords = nil)
    @campaignId = campaignId
    @adGroupNegativeKeywords = adGroupNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v7}SetNegativeKeywordsToAdGroupsResponse
class SetNegativeKeywordsToAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddTargetRequest
#   adGroupId - SOAP::SOAPLong
#   target - Target
class AddTargetRequest
  attr_accessor :adGroupId
  attr_accessor :target

  def initialize(adGroupId = nil, target = nil)
    @adGroupId = adGroupId
    @target = target
  end
end

# {https://adcenter.microsoft.com/v7}AddTargetResponse
#   targetId - SOAP::SOAPLong
class AddTargetResponse
  attr_accessor :targetId

  def initialize(targetId = nil)
    @targetId = targetId
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetRequest
#   adGroupId - SOAP::SOAPLong
class DeleteTargetRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetResponse
class DeleteTargetResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetTargetByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetByAdGroupIdResponse
#   target - Target
class GetTargetByAdGroupIdResponse
  attr_accessor :target

  def initialize(target = nil)
    @target = target
  end
end

# {https://adcenter.microsoft.com/v7}UpdateTargetRequest
#   adGroupId - SOAP::SOAPLong
#   target - Target
class UpdateTargetRequest
  attr_accessor :adGroupId
  attr_accessor :target

  def initialize(adGroupId = nil, target = nil)
    @adGroupId = adGroupId
    @target = target
  end
end

# {https://adcenter.microsoft.com/v7}UpdateTargetResponse
class UpdateTargetResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}AddTargetsToLibraryRequest
#   targets - ArrayOfTarget
class AddTargetsToLibraryRequest
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v7}AddTargetsToLibraryResponse
#   targetIds - ArrayOflong
class AddTargetsToLibraryResponse
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryRequest
#   targets - ArrayOfTarget
class UpdateTargetsInLibraryRequest
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v7}UpdateTargetsInLibraryResponse
class UpdateTargetsInLibraryResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryRequest
#   targetIds - ArrayOflong
class DeleteTargetsFromLibraryRequest
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetsFromLibraryResponse
class DeleteTargetsFromLibraryResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryRequest
class GetTargetsInfoFromLibraryRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsInfoFromLibraryResponse
#   targetsInfo - ArrayOfTargetInfo
class GetTargetsInfoFromLibraryResponse
  attr_accessor :targetsInfo

  def initialize(targetsInfo = nil)
    @targetsInfo = targetsInfo
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByIdsRequest
#   targetIds - ArrayOflong
class GetTargetsByIdsRequest
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByIdsResponse
#   targets - ArrayOfTarget
class GetTargetsByIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v7}SetTargetToAdGroupRequest
#   adGroupId - SOAP::SOAPLong
#   targetId - SOAP::SOAPLong
class SetTargetToAdGroupRequest
  attr_accessor :adGroupId
  attr_accessor :targetId

  def initialize(adGroupId = nil, targetId = nil)
    @adGroupId = adGroupId
    @targetId = targetId
  end
end

# {https://adcenter.microsoft.com/v7}SetTargetToAdGroupResponse
class SetTargetToAdGroupResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupRequest
#   adGroupId - SOAP::SOAPLong
class DeleteTargetFromAdGroupRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetFromAdGroupResponse
class DeleteTargetFromAdGroupResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsRequest
#   adGroupIds - ArrayOflong
class GetTargetsByAdGroupIdsRequest
  attr_accessor :adGroupIds

  def initialize(adGroupIds = nil)
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByAdGroupIdsResponse
#   targets - ArrayOfTarget
class GetTargetsByAdGroupIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v7}SetTargetToCampaignRequest
#   campaignId - SOAP::SOAPLong
#   targetId - SOAP::SOAPLong
class SetTargetToCampaignRequest
  attr_accessor :campaignId
  attr_accessor :targetId

  def initialize(campaignId = nil, targetId = nil)
    @campaignId = campaignId
    @targetId = targetId
  end
end

# {https://adcenter.microsoft.com/v7}SetTargetToCampaignResponse
class SetTargetToCampaignResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignRequest
#   campaignId - SOAP::SOAPLong
class DeleteTargetFromCampaignRequest
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v7}DeleteTargetFromCampaignResponse
class DeleteTargetFromCampaignResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsRequest
#   campaignIds - ArrayOflong
class GetTargetsByCampaignIdsRequest
  attr_accessor :campaignIds

  def initialize(campaignIds = nil)
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v7}GetTargetsByCampaignIdsResponse
#   targets - ArrayOfTarget
class GetTargetsByCampaignIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end
