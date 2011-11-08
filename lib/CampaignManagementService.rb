require 'xsd/qname'

module AdCenterWrapper


# {https://adcenter.microsoft.com/v8}Ad
#   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdCenterWrapper::AdStatus
#   type - AdCenterWrapper::AdType
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

# {https://adcenter.microsoft.com/v8}MobileAd
#   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdCenterWrapper::AdStatus
#   type - AdCenterWrapper::AdType
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

# {https://adcenter.microsoft.com/v8}TextAd
#   editorialStatus - AdCenterWrapper::AdEditorialStatus
#   id - SOAP::SOAPLong
#   status - AdCenterWrapper::AdStatus
#   type - AdCenterWrapper::AdType
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

# {https://adcenter.microsoft.com/v8}ArrayOfAd
class ArrayOfAd < ::Array
end

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

# {https://adcenter.microsoft.com/v8}ArrayOfEditorialError
class ArrayOfEditorialError < ::Array
end

# {https://adcenter.microsoft.com/v8}EditorialError
#   appealable - SOAP::SOAPBoolean
#   code - SOAP::SOAPInt
#   disapprovedText - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   message - SOAP::SOAPString
#   publisherCountry - SOAP::SOAPString
class EditorialError
  attr_accessor :appealable
  attr_accessor :code
  attr_accessor :disapprovedText
  attr_accessor :errorCode
  attr_accessor :index
  attr_accessor :message
  attr_accessor :publisherCountry

  def initialize(appealable = nil, code = nil, disapprovedText = nil, errorCode = nil, index = nil, message = nil, publisherCountry = nil)
    @appealable = appealable
    @code = code
    @disapprovedText = disapprovedText
    @errorCode = errorCode
    @index = index
    @message = message
    @publisherCountry = publisherCountry
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfKeyword
class ArrayOfKeyword < ::Array
end

# {https://adcenter.microsoft.com/v8}Keyword
#   broadMatchBid - AdCenterWrapper::Bid
#   contentMatchBid - AdCenterWrapper::Bid
#   editorialStatus - AdCenterWrapper::KeywordEditorialStatus
#   exactMatchBid - AdCenterWrapper::Bid
#   id - SOAP::SOAPLong
#   negativeKeywords - AdCenterWrapper::ArrayOfstring
#   param1 - SOAP::SOAPString
#   param2 - SOAP::SOAPString
#   param3 - SOAP::SOAPString
#   phraseMatchBid - AdCenterWrapper::Bid
#   status - AdCenterWrapper::KeywordStatus
#   text - SOAP::SOAPString
class Keyword
  attr_accessor :broadMatchBid
  attr_accessor :contentMatchBid
  attr_accessor :editorialStatus
  attr_accessor :exactMatchBid
  attr_accessor :id
  attr_accessor :negativeKeywords
  attr_accessor :param1
  attr_accessor :param2
  attr_accessor :param3
  attr_accessor :phraseMatchBid
  attr_accessor :status
  attr_accessor :text

  def initialize(broadMatchBid = nil, contentMatchBid = nil, editorialStatus = nil, exactMatchBid = nil, id = nil, negativeKeywords = nil, param1 = nil, param2 = nil, param3 = nil, phraseMatchBid = nil, status = nil, text = nil)
    @broadMatchBid = broadMatchBid
    @contentMatchBid = contentMatchBid
    @editorialStatus = editorialStatus
    @exactMatchBid = exactMatchBid
    @id = id
    @negativeKeywords = negativeKeywords
    @param1 = param1
    @param2 = param2
    @param3 = param3
    @phraseMatchBid = phraseMatchBid
    @status = status
    @text = text
  end
end

# {https://adcenter.microsoft.com/v8}Bid
#   amount - SOAP::SOAPDouble
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfBusiness
class ArrayOfBusiness < ::Array
end

# {https://adcenter.microsoft.com/v8}Business
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   businessImageIcon - AdCenterWrapper::BusinessImageIcon
#   city - SOAP::SOAPString
#   countryOrRegion - SOAP::SOAPString
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   geoCodeStatus - AdCenterWrapper::BusinessGeoCodeStatus
#   hrsOfOperation - AdCenterWrapper::ArrayOfHoursOfOperation
#   id - SOAP::SOAPLong
#   isOpen24Hours - SOAP::SOAPBoolean
#   latitudeDegrees - SOAP::SOAPDouble
#   longitudeDegrees - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   otherPaymentTypeDesc - SOAP::SOAPString
#   payment - AdCenterWrapper::ArrayOfPaymentType
#   phone - SOAP::SOAPString
#   stateOrProvince - SOAP::SOAPString
#   status - AdCenterWrapper::BusinessStatus
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

# {https://adcenter.microsoft.com/v8}BusinessImageIcon
#   customIconAssetId - SOAP::SOAPLong
#   standardBusinessIcon - AdCenterWrapper::StandardBusinessIcon
class BusinessImageIcon
  attr_accessor :customIconAssetId
  attr_accessor :standardBusinessIcon

  def initialize(customIconAssetId = nil, standardBusinessIcon = nil)
    @customIconAssetId = customIconAssetId
    @standardBusinessIcon = standardBusinessIcon
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfHoursOfOperation
class ArrayOfHoursOfOperation < ::Array
end

# {https://adcenter.microsoft.com/v8}HoursOfOperation
#   day - AdCenterWrapper::Day
#   openTime1 - AdCenterWrapper::DayTimeInterval
#   openTime2 - AdCenterWrapper::DayTimeInterval
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

# {https://adcenter.microsoft.com/v8}DayTimeInterval
#   m_begin - AdCenterWrapper::TimeOfTheDay
#   m_end - AdCenterWrapper::TimeOfTheDay
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

# {https://adcenter.microsoft.com/v8}TimeOfTheDay
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

# {https://adcenter.microsoft.com/v8}ArrayOfPaymentType
class ArrayOfPaymentType < ::Array
end

# {https://adcenter.microsoft.com/v8}ArrayOfBusinessInfo
class ArrayOfBusinessInfo < ::Array
end

# {https://adcenter.microsoft.com/v8}BusinessInfo
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

# {https://adcenter.microsoft.com/v8}ArrayOfSitePlacement
class ArrayOfSitePlacement < ::Array
end

# {https://adcenter.microsoft.com/v8}SitePlacement
#   bid - AdCenterWrapper::Bid
#   id - SOAP::SOAPLong
#   placementId - SOAP::SOAPLong
#   status - AdCenterWrapper::SitePlacementStatus
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

# {https://adcenter.microsoft.com/v8}ArrayOfArrayOfPlacementDetail
class ArrayOfArrayOfPlacementDetail < ::Array
end

# {https://adcenter.microsoft.com/v8}ArrayOfPlacementDetail
class ArrayOfPlacementDetail < ::Array
end

# {https://adcenter.microsoft.com/v8}PlacementDetail
#   impressionsRangePerDay - AdCenterWrapper::ImpressionsPerDayRange
#   pathName - SOAP::SOAPString
#   placementId - SOAP::SOAPLong
#   supportedMediaTypes - AdCenterWrapper::ArrayOfMediaType
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

# {https://adcenter.microsoft.com/v8}ImpressionsPerDayRange
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

# {https://adcenter.microsoft.com/v8}ArrayOfMediaType
class ArrayOfMediaType < ::Array
end

# {https://adcenter.microsoft.com/v8}MediaType
#   dimensions - AdCenterWrapper::ArrayOfDimension
#   name - SOAP::SOAPString
class MediaType
  attr_accessor :dimensions
  attr_accessor :name

  def initialize(dimensions = nil, name = nil)
    @dimensions = dimensions
    @name = name
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfDimension
class ArrayOfDimension < ::Array
end

# {https://adcenter.microsoft.com/v8}Dimension
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

# {https://adcenter.microsoft.com/v8}ArrayOfEditorialReasonCollection
class ArrayOfEditorialReasonCollection < ::Array
end

# {https://adcenter.microsoft.com/v8}EditorialReasonCollection
#   adOrKeywordId - SOAP::SOAPLong
#   reasons - AdCenterWrapper::ArrayOfEditorialReason
class EditorialReasonCollection
  attr_accessor :adOrKeywordId
  attr_accessor :reasons

  def initialize(adOrKeywordId = nil, reasons = nil)
    @adOrKeywordId = adOrKeywordId
    @reasons = reasons
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfEditorialReason
class ArrayOfEditorialReason < ::Array
end

# {https://adcenter.microsoft.com/v8}EditorialReason
#   location - AdCenterWrapper::AdComponent
#   publisherCountries - AdCenterWrapper::ArrayOfstring
#   reasonCode - SOAP::SOAPInt
#   term - SOAP::SOAPString
class EditorialReason
  attr_accessor :location
  attr_accessor :publisherCountries
  attr_accessor :reasonCode
  attr_accessor :term

  def initialize(location = nil, publisherCountries = nil, reasonCode = nil, term = nil)
    @location = location
    @publisherCountries = publisherCountries
    @reasonCode = reasonCode
    @term = term
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfCampaignScope
class ArrayOfCampaignScope < ::Array
end

# {https://adcenter.microsoft.com/v8}CampaignScope
#   campaignId - SOAP::SOAPLong
#   parentAccountId - SOAP::SOAPLong
class CampaignScope
  attr_accessor :campaignId
  attr_accessor :parentAccountId

  def initialize(campaignId = nil, parentAccountId = nil)
    @campaignId = campaignId
    @parentAccountId = parentAccountId
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfAdExtension
class ArrayOfAdExtension < ::Array
end

# {https://adcenter.microsoft.com/v8}AdExtension
#   campaignId - SOAP::SOAPLong
#   enableLocationExtension - SOAP::SOAPBoolean
#   phoneExtension - AdCenterWrapper::PhoneExtension
class AdExtension
  attr_accessor :campaignId
  attr_accessor :enableLocationExtension
  attr_accessor :phoneExtension

  def initialize(campaignId = nil, enableLocationExtension = nil, phoneExtension = nil)
    @campaignId = campaignId
    @enableLocationExtension = enableLocationExtension
    @phoneExtension = phoneExtension
  end
end

# {https://adcenter.microsoft.com/v8}PhoneExtension
#   country - SOAP::SOAPString
#   enableClickToCallOnly - SOAP::SOAPBoolean
#   enablePhoneExtension - SOAP::SOAPBoolean
#   phone - SOAP::SOAPString
class PhoneExtension
  attr_accessor :country
  attr_accessor :enableClickToCallOnly
  attr_accessor :enablePhoneExtension
  attr_accessor :phone

  def initialize(country = nil, enableClickToCallOnly = nil, enablePhoneExtension = nil, phone = nil)
    @country = country
    @enableClickToCallOnly = enableClickToCallOnly
    @enablePhoneExtension = enablePhoneExtension
    @phone = phone
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfCampaign
class ArrayOfCampaign < ::Array
end

# {https://adcenter.microsoft.com/v8}Campaign
#   budgetType - AdCenterWrapper::BudgetLimitType
#   conversionTrackingEnabled - SOAP::SOAPBoolean
#   dailyBudget - SOAP::SOAPDouble
#   daylightSaving - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   monthlyBudget - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   status - AdCenterWrapper::CampaignStatus
#   timeZone - SOAP::SOAPString
class Campaign
  attr_accessor :budgetType
  attr_accessor :conversionTrackingEnabled
  attr_accessor :dailyBudget
  attr_accessor :daylightSaving
  attr_accessor :description
  attr_accessor :id
  attr_accessor :monthlyBudget
  attr_accessor :name
  attr_accessor :status
  attr_accessor :timeZone

  def initialize(budgetType = nil, conversionTrackingEnabled = nil, dailyBudget = nil, daylightSaving = nil, description = nil, id = nil, monthlyBudget = nil, name = nil, status = nil, timeZone = nil)
    @budgetType = budgetType
    @conversionTrackingEnabled = conversionTrackingEnabled
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

# {https://adcenter.microsoft.com/v8}ArrayOfCampaignNegativeKeywords
class ArrayOfCampaignNegativeKeywords < ::Array
end

# {https://adcenter.microsoft.com/v8}CampaignNegativeKeywords
#   campaignId - SOAP::SOAPLong
#   negativeKeywords - AdCenterWrapper::ArrayOfstring
class CampaignNegativeKeywords
  attr_accessor :campaignId
  attr_accessor :negativeKeywords

  def initialize(campaignId = nil, negativeKeywords = nil)
    @campaignId = campaignId
    @negativeKeywords = negativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfCampaignNegativeSites
class ArrayOfCampaignNegativeSites < ::Array
end

# {https://adcenter.microsoft.com/v8}CampaignNegativeSites
#   campaignId - SOAP::SOAPLong
#   negativeSites - AdCenterWrapper::ArrayOfstring
class CampaignNegativeSites
  attr_accessor :campaignId
  attr_accessor :negativeSites

  def initialize(campaignId = nil, negativeSites = nil)
    @campaignId = campaignId
    @negativeSites = negativeSites
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfAdGroup
class ArrayOfAdGroup < ::Array
end

# {https://adcenter.microsoft.com/v8}AdGroup
#   adDistribution - (any)
#   biddingModel - AdCenterWrapper::BiddingModel
#   broadMatchBid - AdCenterWrapper::Bid
#   contentMatchBid - AdCenterWrapper::Bid
#   endDate - AdCenterWrapper::Date
#   exactMatchBid - AdCenterWrapper::Bid
#   id - SOAP::SOAPLong
#   language - SOAP::SOAPString
#   name - SOAP::SOAPString
#   network - AdCenterWrapper::Network
#   phraseMatchBid - AdCenterWrapper::Bid
#   pricingModel - AdCenterWrapper::PricingModel
#   publisherCountries - AdCenterWrapper::ArrayOfPublisherCountry
#   startDate - AdCenterWrapper::Date
#   status - AdCenterWrapper::AdGroupStatus
class AdGroup
  attr_accessor :adDistribution
  attr_accessor :biddingModel
  attr_accessor :broadMatchBid
  attr_accessor :contentMatchBid
  attr_accessor :endDate
  attr_accessor :exactMatchBid
  attr_accessor :id
  attr_accessor :language
  attr_accessor :name
  attr_accessor :network
  attr_accessor :phraseMatchBid
  attr_accessor :pricingModel
  attr_accessor :publisherCountries
  attr_accessor :startDate
  attr_accessor :status

  def initialize(adDistribution = nil, biddingModel = nil, broadMatchBid = nil, contentMatchBid = nil, endDate = nil, exactMatchBid = nil, id = nil, language = nil, name = nil, network = nil, phraseMatchBid = nil, pricingModel = nil, publisherCountries = nil, startDate = nil, status = nil)
    @adDistribution = adDistribution
    @biddingModel = biddingModel
    @broadMatchBid = broadMatchBid
    @contentMatchBid = contentMatchBid
    @endDate = endDate
    @exactMatchBid = exactMatchBid
    @id = id
    @language = language
    @name = name
    @network = network
    @phraseMatchBid = phraseMatchBid
    @pricingModel = pricingModel
    @publisherCountries = publisherCountries
    @startDate = startDate
    @status = status
  end
end

# {https://adcenter.microsoft.com/v8}Date
#   day - SOAP::SOAPInt
#   month - SOAP::SOAPInt
#   year - SOAP::SOAPInt
class Date
  attr_accessor :day
  attr_accessor :month
  attr_accessor :year

  def initialize(day = nil, month = nil, year = nil)
    @day = day
    @month = month
    @year = year
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfPublisherCountry
class ArrayOfPublisherCountry < ::Array
end

# {https://adcenter.microsoft.com/v8}PublisherCountry
#   country - SOAP::SOAPString
#   isOptedIn - SOAP::SOAPBoolean
class PublisherCountry
  attr_accessor :country
  attr_accessor :isOptedIn

  def initialize(country = nil, isOptedIn = nil)
    @country = country
    @isOptedIn = isOptedIn
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfAdGroupNegativeKeywords
class ArrayOfAdGroupNegativeKeywords < ::Array
end

# {https://adcenter.microsoft.com/v8}AdGroupNegativeKeywords
#   adGroupId - SOAP::SOAPLong
#   negativeKeywords - AdCenterWrapper::ArrayOfstring
class AdGroupNegativeKeywords
  attr_accessor :adGroupId
  attr_accessor :negativeKeywords

  def initialize(adGroupId = nil, negativeKeywords = nil)
    @adGroupId = adGroupId
    @negativeKeywords = negativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfAdGroupNegativeSites
class ArrayOfAdGroupNegativeSites < ::Array
end

# {https://adcenter.microsoft.com/v8}AdGroupNegativeSites
#   adGroupId - SOAP::SOAPLong
#   negativeSites - AdCenterWrapper::ArrayOfstring
class AdGroupNegativeSites
  attr_accessor :adGroupId
  attr_accessor :negativeSites

  def initialize(adGroupId = nil, negativeSites = nil)
    @adGroupId = adGroupId
    @negativeSites = negativeSites
  end
end

# {https://adcenter.microsoft.com/v8}Target
#   age - AdCenterWrapper::AgeTarget
#   day - AdCenterWrapper::DayTarget
#   device - AdCenterWrapper::DeviceTarget
#   gender - AdCenterWrapper::GenderTarget
#   hour - AdCenterWrapper::HourTarget
#   id - SOAP::SOAPLong
#   isLibraryTarget - SOAP::SOAPBoolean
#   location - AdCenterWrapper::LocationTarget
#   name - SOAP::SOAPString
class Target
  attr_accessor :age
  attr_accessor :day
  attr_accessor :device
  attr_accessor :gender
  attr_accessor :hour
  attr_accessor :id
  attr_accessor :isLibraryTarget
  attr_accessor :location
  attr_accessor :name

  def initialize(age = nil, day = nil, device = nil, gender = nil, hour = nil, id = nil, isLibraryTarget = nil, location = nil, name = nil)
    @age = age
    @day = day
    @device = device
    @gender = gender
    @hour = hour
    @id = id
    @isLibraryTarget = isLibraryTarget
    @location = location
    @name = name
  end
end

# {https://adcenter.microsoft.com/v8}AgeTarget
#   bids - AdCenterWrapper::ArrayOfAgeTargetBid
class AgeTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfAgeTargetBid
class ArrayOfAgeTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}AgeTargetBid
#   age - AdCenterWrapper::AgeRange
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class AgeTargetBid
  attr_accessor :age
  attr_accessor :incrementalBid

  def initialize(age = nil, incrementalBid = nil)
    @age = age
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}DayTarget
#   bids - AdCenterWrapper::ArrayOfDayTargetBid
#   targetAllDays - SOAP::SOAPBoolean
class DayTarget
  attr_accessor :bids
  attr_accessor :targetAllDays

  def initialize(bids = nil, targetAllDays = nil)
    @bids = bids
    @targetAllDays = targetAllDays
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfDayTargetBid
class ArrayOfDayTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}DayTargetBid
#   day - AdCenterWrapper::Day
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class DayTargetBid
  attr_accessor :day
  attr_accessor :incrementalBid

  def initialize(day = nil, incrementalBid = nil)
    @day = day
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}DeviceTarget
#   devices - AdCenterWrapper::ArrayOfDeviceType
class DeviceTarget
  attr_accessor :devices

  def initialize(devices = nil)
    @devices = devices
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfDeviceType
class ArrayOfDeviceType < ::Array
end

# {https://adcenter.microsoft.com/v8}GenderTarget
#   bids - AdCenterWrapper::ArrayOfGenderTargetBid
class GenderTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfGenderTargetBid
class ArrayOfGenderTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}GenderTargetBid
#   gender - AdCenterWrapper::GenderType
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class GenderTargetBid
  attr_accessor :gender
  attr_accessor :incrementalBid

  def initialize(gender = nil, incrementalBid = nil)
    @gender = gender
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}HourTarget
#   bids - AdCenterWrapper::ArrayOfHourTargetBid
#   targetAllHours - SOAP::SOAPBoolean
class HourTarget
  attr_accessor :bids
  attr_accessor :targetAllHours

  def initialize(bids = nil, targetAllHours = nil)
    @bids = bids
    @targetAllHours = targetAllHours
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfHourTargetBid
class ArrayOfHourTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}HourTargetBid
#   hour - AdCenterWrapper::HourRange
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class HourTargetBid
  attr_accessor :hour
  attr_accessor :incrementalBid

  def initialize(hour = nil, incrementalBid = nil)
    @hour = hour
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}LocationTarget
#   businessTarget - AdCenterWrapper::BusinessTarget
#   cityTarget - AdCenterWrapper::CityTarget
#   countryTarget - AdCenterWrapper::CountryTarget
#   hasPhysicalIntent - SOAP::SOAPBoolean
#   metroAreaTarget - AdCenterWrapper::MetroAreaTarget
#   radiusTarget - AdCenterWrapper::RadiusTarget
#   stateTarget - AdCenterWrapper::StateTarget
#   targetAllLocations - SOAP::SOAPBoolean
class LocationTarget
  attr_accessor :businessTarget
  attr_accessor :cityTarget
  attr_accessor :countryTarget
  attr_accessor :hasPhysicalIntent
  attr_accessor :metroAreaTarget
  attr_accessor :radiusTarget
  attr_accessor :stateTarget
  attr_accessor :targetAllLocations

  def initialize(businessTarget = nil, cityTarget = nil, countryTarget = nil, hasPhysicalIntent = nil, metroAreaTarget = nil, radiusTarget = nil, stateTarget = nil, targetAllLocations = nil)
    @businessTarget = businessTarget
    @cityTarget = cityTarget
    @countryTarget = countryTarget
    @hasPhysicalIntent = hasPhysicalIntent
    @metroAreaTarget = metroAreaTarget
    @radiusTarget = radiusTarget
    @stateTarget = stateTarget
    @targetAllLocations = targetAllLocations
  end
end

# {https://adcenter.microsoft.com/v8}BusinessTarget
#   bids - AdCenterWrapper::ArrayOfBusinessTargetBid
class BusinessTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfBusinessTargetBid
class ArrayOfBusinessTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}BusinessTargetBid
#   businessId - SOAP::SOAPLong
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
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

# {https://adcenter.microsoft.com/v8}CityTarget
#   bids - AdCenterWrapper::ArrayOfCityTargetBid
class CityTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfCityTargetBid
class ArrayOfCityTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}CityTargetBid
#   city - SOAP::SOAPString
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class CityTargetBid
  attr_accessor :city
  attr_accessor :incrementalBid

  def initialize(city = nil, incrementalBid = nil)
    @city = city
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}CountryTarget
#   bids - AdCenterWrapper::ArrayOfCountryTargetBid
class CountryTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfCountryTargetBid
class ArrayOfCountryTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}CountryTargetBid
#   countryAndRegion - SOAP::SOAPString
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
class CountryTargetBid
  attr_accessor :countryAndRegion
  attr_accessor :incrementalBid

  def initialize(countryAndRegion = nil, incrementalBid = nil)
    @countryAndRegion = countryAndRegion
    @incrementalBid = incrementalBid
  end
end

# {https://adcenter.microsoft.com/v8}MetroAreaTarget
#   bids - AdCenterWrapper::ArrayOfMetroAreaTargetBid
class MetroAreaTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfMetroAreaTargetBid
class ArrayOfMetroAreaTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}MetroAreaTargetBid
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   metroArea - SOAP::SOAPString
class MetroAreaTargetBid
  attr_accessor :incrementalBid
  attr_accessor :metroArea

  def initialize(incrementalBid = nil, metroArea = nil)
    @incrementalBid = incrementalBid
    @metroArea = metroArea
  end
end

# {https://adcenter.microsoft.com/v8}RadiusTarget
#   bids - AdCenterWrapper::ArrayOfRadiusTargetBid
class RadiusTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfRadiusTargetBid
class ArrayOfRadiusTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}RadiusTargetBid
#   id - SOAP::SOAPLong
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   latitudeDegrees - SOAP::SOAPDouble
#   longitudeDegrees - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   radius - SOAP::SOAPInt
class RadiusTargetBid
  attr_accessor :id
  attr_accessor :incrementalBid
  attr_accessor :latitudeDegrees
  attr_accessor :longitudeDegrees
  attr_accessor :name
  attr_accessor :radius

  def initialize(id = nil, incrementalBid = nil, latitudeDegrees = nil, longitudeDegrees = nil, name = nil, radius = nil)
    @id = id
    @incrementalBid = incrementalBid
    @latitudeDegrees = latitudeDegrees
    @longitudeDegrees = longitudeDegrees
    @name = name
    @radius = radius
  end
end

# {https://adcenter.microsoft.com/v8}StateTarget
#   bids - AdCenterWrapper::ArrayOfStateTargetBid
class StateTarget
  attr_accessor :bids

  def initialize(bids = nil)
    @bids = bids
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfStateTargetBid
class ArrayOfStateTargetBid < ::Array
end

# {https://adcenter.microsoft.com/v8}StateTargetBid
#   incrementalBid - AdCenterWrapper::IncrementalBidPercentage
#   state - SOAP::SOAPString
class StateTargetBid
  attr_accessor :incrementalBid
  attr_accessor :state

  def initialize(incrementalBid = nil, state = nil)
    @incrementalBid = incrementalBid
    @state = state
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfTarget
class ArrayOfTarget < ::Array
end

# {https://adcenter.microsoft.com/v8}ArrayOfTargetAssociation
class ArrayOfTargetAssociation < ::Array
end

# {https://adcenter.microsoft.com/v8}TargetAssociation
#   deviceOSTarget - AdCenterWrapper::DeviceOSTarget
#   id - SOAP::SOAPLong
class TargetAssociation
  attr_accessor :deviceOSTarget
  attr_accessor :id

  def initialize(deviceOSTarget = nil, id = nil)
    @deviceOSTarget = deviceOSTarget
    @id = id
  end
end

# {https://adcenter.microsoft.com/v8}DeviceOSTarget
#   deviceOSList - AdCenterWrapper::ArrayOfDeviceOS
class DeviceOSTarget
  attr_accessor :deviceOSList

  def initialize(deviceOSList = nil)
    @deviceOSList = deviceOSList
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfDeviceOS
class ArrayOfDeviceOS < ::Array
end

# {https://adcenter.microsoft.com/v8}DeviceOS
#   deviceName - SOAP::SOAPString
#   oSName - SOAP::SOAPString
class DeviceOS
  attr_accessor :deviceName
  attr_accessor :oSName

  def initialize(deviceName = nil, oSName = nil)
    @deviceName = deviceName
    @oSName = oSName
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfTargetInfo
class ArrayOfTargetInfo < ::Array
end

# {https://adcenter.microsoft.com/v8}TargetInfo
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

# {https://adcenter.microsoft.com/v8}EditorialApiFaultDetail
#   trackingId - SOAP::SOAPString
#   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   editorialErrors - AdCenterWrapper::ArrayOfEditorialError
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
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

# {https://adcenter.microsoft.com/v8}AnalyticsApiFaultDetail
#   trackingId - SOAP::SOAPString
#   goalErrors - AdCenterWrapper::ArrayOfGoalError
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
class AnalyticsApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :goalErrors
  attr_accessor :operationErrors

  def initialize(trackingId = nil, goalErrors = nil, operationErrors = nil)
    @trackingId = trackingId
    @goalErrors = goalErrors
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

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfGoal
class ArrayOfGoal < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}Goal
#   costModel - (any)
#   daysApplicableForConversion - AdCenterWrapper::DaysApplicableForConversion
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   revenueModel - AdCenterWrapper::RevenueModel
#   steps - AdCenterWrapper::ArrayOfStep
#   yEventId - SOAP::SOAPInt
class Goal
  attr_accessor :costModel
  attr_accessor :daysApplicableForConversion
  attr_accessor :id
  attr_accessor :name
  attr_accessor :revenueModel
  attr_accessor :steps
  attr_accessor :yEventId

  def initialize(costModel = nil, daysApplicableForConversion = nil, id = nil, name = nil, revenueModel = nil, steps = nil, yEventId = nil)
    @costModel = costModel
    @daysApplicableForConversion = daysApplicableForConversion
    @id = id
    @name = name
    @revenueModel = revenueModel
    @steps = steps
    @yEventId = yEventId
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}RevenueModel
#   constantRevenueValue - SOAP::SOAPDouble
#   type - AdCenterWrapper::RevenueModelType
class RevenueModel
  attr_accessor :constantRevenueValue
  attr_accessor :type

  def initialize(constantRevenueValue = nil, type = nil)
    @constantRevenueValue = constantRevenueValue
    @type = type
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfStep
class ArrayOfStep < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}Step
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   positionNumber - SOAP::SOAPInt
#   script - SOAP::SOAPString
#   type - AdCenterWrapper::StepType
class Step
  attr_accessor :id
  attr_accessor :name
  attr_accessor :positionNumber
  attr_accessor :script
  attr_accessor :type

  def initialize(id = nil, name = nil, positionNumber = nil, script = nil, type = nil)
    @id = id
    @name = name
    @positionNumber = positionNumber
    @script = script
    @type = type
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfGoalResult
class ArrayOfGoalResult < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}GoalResult
#   goalId - SOAP::SOAPLong
#   stepIds - AdCenterWrapper::ArrayOflong
class GoalResult
  attr_accessor :goalId
  attr_accessor :stepIds

  def initialize(goalId = nil, stepIds = nil)
    @goalId = goalId
    @stepIds = stepIds
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfGoalError
class ArrayOfGoalError < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}GoalError
#   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   index - SOAP::SOAPInt
#   stepErrors - AdCenterWrapper::ArrayOfBatchError
class GoalError
  attr_accessor :batchErrors
  attr_accessor :index
  attr_accessor :stepErrors

  def initialize(batchErrors = nil, index = nil, stepErrors = nil)
    @batchErrors = batchErrors
    @index = index
    @stepErrors = stepErrors
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfAccountAnalyticsType
class ArrayOfAccountAnalyticsType < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AccountAnalyticsType
#   accountId - SOAP::SOAPLong
#   type - AdCenterWrapper::AnalyticsType
class AccountAnalyticsType
  attr_accessor :accountId
  attr_accessor :type

  def initialize(accountId = nil, type = nil)
    @accountId = accountId
    @type = type
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}ArrayOfAnalyticsType
class ArrayOfAnalyticsType < ::Array
end

# {https://adcenter.microsoft.com/v8}AdEditorialStatus
class AdEditorialStatus < ::String
  Active = AdEditorialStatus.new("Active")
  Disapproved = AdEditorialStatus.new("Disapproved")
  Inactive = AdEditorialStatus.new("Inactive")
end

# {https://adcenter.microsoft.com/v8}AdStatus
class AdStatus < ::String
  Active = AdStatus.new("Active")
  Deleted = AdStatus.new("Deleted")
  Inactive = AdStatus.new("Inactive")
  Paused = AdStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v8}AdType
class AdType < ::String
  Image = AdType.new("Image")
  Mobile = AdType.new("Mobile")
  RichSearch = AdType.new("RichSearch")
  Text = AdType.new("Text")
end

# {https://adcenter.microsoft.com/v8}KeywordEditorialStatus
class KeywordEditorialStatus < ::String
  Active = KeywordEditorialStatus.new("Active")
  Disapproved = KeywordEditorialStatus.new("Disapproved")
  Inactive = KeywordEditorialStatus.new("Inactive")
end

# {https://adcenter.microsoft.com/v8}KeywordStatus
class KeywordStatus < ::String
  Active = KeywordStatus.new("Active")
  Deleted = KeywordStatus.new("Deleted")
  Inactive = KeywordStatus.new("Inactive")
  Paused = KeywordStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v8}StandardBusinessIcon
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

# {https://adcenter.microsoft.com/v8}BusinessGeoCodeStatus
class BusinessGeoCodeStatus < ::String
  Complete = BusinessGeoCodeStatus.new("Complete")
  Failed = BusinessGeoCodeStatus.new("Failed")
  Invalid = BusinessGeoCodeStatus.new("Invalid")
  Pending = BusinessGeoCodeStatus.new("Pending")
end

# {https://adcenter.microsoft.com/v8}Day
class Day < ::String
  Friday = Day.new("Friday")
  Monday = Day.new("Monday")
  Saturday = Day.new("Saturday")
  Sunday = Day.new("Sunday")
  Thursday = Day.new("Thursday")
  Tuesday = Day.new("Tuesday")
  Wednesday = Day.new("Wednesday")
end

# {https://adcenter.microsoft.com/v8}PaymentType
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

# {https://adcenter.microsoft.com/v8}BusinessStatus
class BusinessStatus < ::String
  Active = BusinessStatus.new("Active")
  Inactive = BusinessStatus.new("Inactive")
  Pending = BusinessStatus.new("Pending")
end

# {https://adcenter.microsoft.com/v8}SitePlacementStatus
class SitePlacementStatus < ::String
  Active = SitePlacementStatus.new("Active")
  Deleted = SitePlacementStatus.new("Deleted")
  Inactive = SitePlacementStatus.new("Inactive")
  Paused = SitePlacementStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v8}DownloadEntityFilter
#   contains list of DownloadEntityFilter::*
class DownloadEntityFilter < ::Array
  AdGroupNegativeKeywords = "AdGroupNegativeKeywords"
  AdGroupNegativeSites = "AdGroupNegativeSites"
  AdGroupTargets = "AdGroupTargets"
  CampaignNegativeKeywords = "CampaignNegativeKeywords"
  CampaignNegativeSites = "CampaignNegativeSites"
  CampaignTargets = "CampaignTargets"
end

# {https://adcenter.microsoft.com/v8}DownloadStatus
#   contains list of DownloadStatus::*
class DownloadStatus < ::Array
  Failed = "Failed"
  InProgress = "InProgress"
  Success = "Success"
end

# # {https://adcenter.microsoft.com/v8}BudgetLimitType
# class BudgetLimitType < ::String
#   DailyBudgetAccelerated = BudgetLimitType.new("DailyBudgetAccelerated")
#   DailyBudgetStandard = BudgetLimitType.new("DailyBudgetStandard")
#   MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
# end

# {https://adcenter.microsoft.com/v8}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  BudgetAndManualPaused = CampaignStatus.new("BudgetAndManualPaused")
  BudgetPaused = CampaignStatus.new("BudgetPaused")
  Deleted = CampaignStatus.new("Deleted")
  Paused = CampaignStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v8}AdDistribution
#   contains list of AdDistribution::*
class AdDistribution < ::Array
  Content = "Content"
  Search = "Search"
end

# {https://adcenter.microsoft.com/v8}BiddingModel
class BiddingModel < ::String
  Keyword = BiddingModel.new("Keyword")
  SitePlacement = BiddingModel.new("SitePlacement")
end

# {https://adcenter.microsoft.com/v8}Network
class Network < ::String
  OwnedAndOperatedAndSyndicatedSearch = Network.new("OwnedAndOperatedAndSyndicatedSearch")
  OwnedAndOperatedOnly = Network.new("OwnedAndOperatedOnly")
  SyndicatedSearchOnly = Network.new("SyndicatedSearchOnly")
end

# {https://adcenter.microsoft.com/v8}PricingModel
class PricingModel < ::String
  Cpc = PricingModel.new("Cpc")
  Cpm = PricingModel.new("Cpm")
end

# {https://adcenter.microsoft.com/v8}AdGroupStatus
class AdGroupStatus < ::String
  Active = AdGroupStatus.new("Active")
  Deleted = AdGroupStatus.new("Deleted")
  Draft = AdGroupStatus.new("Draft")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adcenter.microsoft.com/v8}AgeRange
class AgeRange < ::String
  EighteenToTwentyFive = AgeRange.new("EighteenToTwentyFive")
  FiftyToSixtyFive = AgeRange.new("FiftyToSixtyFive")
  SixtyFiveAndAbove = AgeRange.new("SixtyFiveAndAbove")
  ThirtyFiveToFifty = AgeRange.new("ThirtyFiveToFifty")
  TwentyFiveToThirtyFive = AgeRange.new("TwentyFiveToThirtyFive")
end

# {https://adcenter.microsoft.com/v8}IncrementalBidPercentage
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

# {https://adcenter.microsoft.com/v8}DeviceType
class DeviceType < ::String
  Computers = DeviceType.new("Computers")
  Smartphones = DeviceType.new("Smartphones")
end

# {https://adcenter.microsoft.com/v8}GenderType
class GenderType < ::String
  Female = GenderType.new("Female")
  Male = GenderType.new("Male")
end

# {https://adcenter.microsoft.com/v8}HourRange
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

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}CostModel
#   contains list of CostModel::*
class CostModel < ::Array
  NonAdvertising = "NonAdvertising"
  None = "None"
  Shipped = "Shipped"
  Taxed = "Taxed"
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}DaysApplicableForConversion
class DaysApplicableForConversion < ::String
  Fifteen = DaysApplicableForConversion.new("Fifteen")
  FortyFive = DaysApplicableForConversion.new("FortyFive")
  Seven = DaysApplicableForConversion.new("Seven")
  Thirty = DaysApplicableForConversion.new("Thirty")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}RevenueModelType
class RevenueModelType < ::String
  Constant = RevenueModelType.new("Constant")
  None = RevenueModelType.new("None")
  Variable = RevenueModelType.new("Variable")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}StepType
class StepType < ::String
  Browse = StepType.new("Browse")
  Conversion = StepType.new("Conversion")
  Lead = StepType.new("Lead")
  Prospect = StepType.new("Prospect")
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts}AnalyticsType
class AnalyticsType < ::String
  CampaignLevel = AnalyticsType.new("CampaignLevel")
  Disabled = AnalyticsType.new("Disabled")
  Enabled = AnalyticsType.new("Enabled")
end

# {https://adcenter.microsoft.com/v8}GetAdsByEditorialStatusRequest
#   adGroupId - SOAP::SOAPLong
#   editorialStatus - AdCenterWrapper::AdEditorialStatus
class GetAdsByEditorialStatusRequest
  attr_accessor :adGroupId
  attr_accessor :editorialStatus

  def initialize(adGroupId = nil, editorialStatus = nil)
    @adGroupId = adGroupId
    @editorialStatus = editorialStatus
  end
end

# {https://adcenter.microsoft.com/v8}GetAdsByEditorialStatusResponse
#   ads - AdCenterWrapper::ArrayOfAd
class GetAdsByEditorialStatusResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v8}GetAdsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - AdCenterWrapper::ArrayOflong
class GetAdsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v8}GetAdsByIdsResponse
#   ads - AdCenterWrapper::ArrayOfAd
class GetAdsByIdsResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v8}GetAdsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetAdsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}GetAdsByAdGroupIdResponse
#   ads - AdCenterWrapper::ArrayOfAd
class GetAdsByAdGroupIdResponse
  attr_accessor :ads

  def initialize(ads = nil)
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v8}UpdateAdsRequest
#   adGroupId - SOAP::SOAPLong
#   ads - AdCenterWrapper::ArrayOfAd
class UpdateAdsRequest
  attr_accessor :adGroupId
  attr_accessor :ads

  def initialize(adGroupId = nil, ads = nil)
    @adGroupId = adGroupId
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v8}UpdateAdsResponse
class UpdateAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}PauseAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - AdCenterWrapper::ArrayOflong
class PauseAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v8}PauseAdsResponse
class PauseAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}ResumeAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - AdCenterWrapper::ArrayOflong
class ResumeAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v8}ResumeAdsResponse
class ResumeAdsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywords - AdCenterWrapper::ArrayOfKeyword
class AddKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywords

  def initialize(adGroupId = nil, keywords = nil)
    @adGroupId = adGroupId
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}AddKeywordsResponse
#   keywordIds - AdCenterWrapper::ArrayOflong
class AddKeywordsResponse
  attr_accessor :keywordIds

  def initialize(keywordIds = nil)
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - AdCenterWrapper::ArrayOflong
class DeleteKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteKeywordsResponse
class DeleteKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByEditorialStatusRequest
#   adGroupId - SOAP::SOAPLong
#   editorialStatus - AdCenterWrapper::KeywordEditorialStatus
class GetKeywordsByEditorialStatusRequest
  attr_accessor :adGroupId
  attr_accessor :editorialStatus

  def initialize(adGroupId = nil, editorialStatus = nil)
    @adGroupId = adGroupId
    @editorialStatus = editorialStatus
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByEditorialStatusResponse
#   keywords - AdCenterWrapper::ArrayOfKeyword
class GetKeywordsByEditorialStatusResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - AdCenterWrapper::ArrayOflong
class GetKeywordsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByIdsResponse
#   keywords - AdCenterWrapper::ArrayOfKeyword
class GetKeywordsByIdsResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetKeywordsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordsByAdGroupIdResponse
#   keywords - AdCenterWrapper::ArrayOfKeyword
class GetKeywordsByAdGroupIdResponse
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}PauseKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - AdCenterWrapper::ArrayOflong
class PauseKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v8}PauseKeywordsResponse
class PauseKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}ResumeKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywordIds - AdCenterWrapper::ArrayOflong
class ResumeKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adcenter.microsoft.com/v8}ResumeKeywordsResponse
class ResumeKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}UpdateKeywordsRequest
#   adGroupId - SOAP::SOAPLong
#   keywords - AdCenterWrapper::ArrayOfKeyword
class UpdateKeywordsRequest
  attr_accessor :adGroupId
  attr_accessor :keywords

  def initialize(adGroupId = nil, keywords = nil)
    @adGroupId = adGroupId
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v8}UpdateKeywordsResponse
class UpdateKeywordsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddBusinessesRequest
#   businesses - AdCenterWrapper::ArrayOfBusiness
class AddBusinessesRequest
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v8}AddBusinessesResponse
#   businessIds - AdCenterWrapper::ArrayOflong
class AddBusinessesResponse
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v8}UpdateBusinessesRequest
#   businesses - AdCenterWrapper::ArrayOfBusiness
class UpdateBusinessesRequest
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v8}UpdateBusinessesResponse
class UpdateBusinessesResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}DeleteBusinessesRequest
#   businessIds - AdCenterWrapper::ArrayOflong
class DeleteBusinessesRequest
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteBusinessesResponse
class DeleteBusinessesResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetBusinessesInfoRequest
class GetBusinessesInfoRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetBusinessesInfoResponse
#   businessesInfo - AdCenterWrapper::ArrayOfBusinessInfo
class GetBusinessesInfoResponse
  attr_accessor :businessesInfo

  def initialize(businessesInfo = nil)
    @businessesInfo = businessesInfo
  end
end

# {https://adcenter.microsoft.com/v8}GetBusinessesByIdsRequest
#   businessIds - AdCenterWrapper::ArrayOflong
class GetBusinessesByIdsRequest
  attr_accessor :businessIds

  def initialize(businessIds = nil)
    @businessIds = businessIds
  end
end

# {https://adcenter.microsoft.com/v8}GetBusinessesByIdsResponse
#   businesses - AdCenterWrapper::ArrayOfBusiness
class GetBusinessesByIdsResponse
  attr_accessor :businesses

  def initialize(businesses = nil)
    @businesses = businesses
  end
end

# {https://adcenter.microsoft.com/v8}AddSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
class AddSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacements

  def initialize(adGroupId = nil, sitePlacements = nil)
    @adGroupId = adGroupId
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v8}AddSitePlacementsResponse
#   sitePlacementIds - AdCenterWrapper::ArrayOflong
class AddSitePlacementsResponse
  attr_accessor :sitePlacementIds

  def initialize(sitePlacementIds = nil)
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - AdCenterWrapper::ArrayOflong
class DeleteSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteSitePlacementsResponse
class DeleteSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetSitePlacementsByIdsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - AdCenterWrapper::ArrayOflong
class GetSitePlacementsByIdsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v8}GetSitePlacementsByIdsResponse
#   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
class GetSitePlacementsByIdsResponse
  attr_accessor :sitePlacements

  def initialize(sitePlacements = nil)
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v8}GetSitePlacementsByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetSitePlacementsByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}GetSitePlacementsByAdGroupIdResponse
#   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
class GetSitePlacementsByAdGroupIdResponse
  attr_accessor :sitePlacements

  def initialize(sitePlacements = nil)
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v8}PauseSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - AdCenterWrapper::ArrayOflong
class PauseSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v8}PauseSitePlacementsResponse
class PauseSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}ResumeSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacementIds - AdCenterWrapper::ArrayOflong
class ResumeSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacementIds

  def initialize(adGroupId = nil, sitePlacementIds = nil)
    @adGroupId = adGroupId
    @sitePlacementIds = sitePlacementIds
  end
end

# {https://adcenter.microsoft.com/v8}ResumeSitePlacementsResponse
class ResumeSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}UpdateSitePlacementsRequest
#   adGroupId - SOAP::SOAPLong
#   sitePlacements - AdCenterWrapper::ArrayOfSitePlacement
class UpdateSitePlacementsRequest
  attr_accessor :adGroupId
  attr_accessor :sitePlacements

  def initialize(adGroupId = nil, sitePlacements = nil)
    @adGroupId = adGroupId
    @sitePlacements = sitePlacements
  end
end

# {https://adcenter.microsoft.com/v8}UpdateSitePlacementsResponse
class UpdateSitePlacementsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetPlacementDetailsForUrlsRequest
#   urls - AdCenterWrapper::ArrayOfstring
class GetPlacementDetailsForUrlsRequest
  attr_accessor :urls

  def initialize(urls = nil)
    @urls = urls
  end
end

# {https://adcenter.microsoft.com/v8}GetPlacementDetailsForUrlsResponse
#   placementDetails - AdCenterWrapper::ArrayOfArrayOfPlacementDetail
class GetPlacementDetailsForUrlsResponse
  attr_accessor :placementDetails

  def initialize(placementDetails = nil)
    @placementDetails = placementDetails
  end
end

# {https://adcenter.microsoft.com/v8}GetNormalizedStringsRequest
#   strings - AdCenterWrapper::ArrayOfstring
#   language - SOAP::SOAPString
class GetNormalizedStringsRequest
  attr_accessor :strings
  attr_accessor :language

  def initialize(strings = nil, language = nil)
    @strings = strings
    @language = language
  end
end

# {https://adcenter.microsoft.com/v8}GetNormalizedStringsResponse
#   normalizedStrings - AdCenterWrapper::ArrayOfstring
class GetNormalizedStringsResponse
  attr_accessor :normalizedStrings

  def initialize(normalizedStrings = nil)
    @normalizedStrings = normalizedStrings
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordEditorialReasonsByIdsRequest
#   keywordIds - AdCenterWrapper::ArrayOflong
#   accountId - SOAP::SOAPLong
class GetKeywordEditorialReasonsByIdsRequest
  attr_accessor :keywordIds
  attr_accessor :accountId

  def initialize(keywordIds = nil, accountId = nil)
    @keywordIds = keywordIds
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v8}GetKeywordEditorialReasonsByIdsResponse
#   editorialReasons - AdCenterWrapper::ArrayOfEditorialReasonCollection
class GetKeywordEditorialReasonsByIdsResponse
  attr_accessor :editorialReasons

  def initialize(editorialReasons = nil)
    @editorialReasons = editorialReasons
  end
end

# {https://adcenter.microsoft.com/v8}GetAdEditorialReasonsByIdsRequest
#   adIds - AdCenterWrapper::ArrayOflong
#   accountId - SOAP::SOAPLong
class GetAdEditorialReasonsByIdsRequest
  attr_accessor :adIds
  attr_accessor :accountId

  def initialize(adIds = nil, accountId = nil)
    @adIds = adIds
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v8}GetAdEditorialReasonsByIdsResponse
#   editorialReasons - AdCenterWrapper::ArrayOfEditorialReasonCollection
class GetAdEditorialReasonsByIdsResponse
  attr_accessor :editorialReasons

  def initialize(editorialReasons = nil)
    @editorialReasons = editorialReasons
  end
end

# {https://adcenter.microsoft.com/v8}DownloadCampaignHierarchyRequest
#   accountIds - AdCenterWrapper::ArrayOflong
#   campaigns - AdCenterWrapper::ArrayOfCampaignScope
#   lastSyncTimeInUTC - SOAP::SOAPDateTime
#   entityFilter - (any)
class DownloadCampaignHierarchyRequest
  attr_accessor :accountIds
  attr_accessor :campaigns
  attr_accessor :lastSyncTimeInUTC
  attr_accessor :entityFilter

  def initialize(accountIds = nil, campaigns = nil, lastSyncTimeInUTC = nil, entityFilter = nil)
    @accountIds = accountIds
    @campaigns = campaigns
    @lastSyncTimeInUTC = lastSyncTimeInUTC
    @entityFilter = entityFilter
  end
end

# {https://adcenter.microsoft.com/v8}DownloadCampaignHierarchyResponse
#   downloadRequestId - SOAP::SOAPString
class DownloadCampaignHierarchyResponse
  attr_accessor :downloadRequestId

  def initialize(downloadRequestId = nil)
    @downloadRequestId = downloadRequestId
  end
end

# {https://adcenter.microsoft.com/v8}GetDownloadStatusRequest
#   downloadRequestId - SOAP::SOAPString
class GetDownloadStatusRequest
  attr_accessor :downloadRequestId

  def initialize(downloadRequestId = nil)
    @downloadRequestId = downloadRequestId
  end
end

# {https://adcenter.microsoft.com/v8}GetDownloadStatusResponse
#   downloadUrl - SOAP::SOAPString
#   status - (any)
class GetDownloadStatusResponse
  attr_accessor :downloadUrl
  attr_accessor :status

  def initialize(downloadUrl = nil, status = nil)
    @downloadUrl = downloadUrl
    @status = status
  end
end

# {https://adcenter.microsoft.com/v8}AddGoalsRequest
#   accountId - SOAP::SOAPLong
#   goals - AdCenterWrapper::ArrayOfGoal
class AddGoalsRequest
  attr_accessor :accountId
  attr_accessor :goals

  def initialize(accountId = nil, goals = nil)
    @accountId = accountId
    @goals = goals
  end
end

# {https://adcenter.microsoft.com/v8}AddGoalsResponse
#   goalResults - AdCenterWrapper::ArrayOfGoalResult
class AddGoalsResponse
  attr_accessor :goalResults

  def initialize(goalResults = nil)
    @goalResults = goalResults
  end
end

# {https://adcenter.microsoft.com/v8}UpdateGoalsRequest
#   accountId - SOAP::SOAPLong
#   goals - AdCenterWrapper::ArrayOfGoal
class UpdateGoalsRequest
  attr_accessor :accountId
  attr_accessor :goals

  def initialize(accountId = nil, goals = nil)
    @accountId = accountId
    @goals = goals
  end
end

# {https://adcenter.microsoft.com/v8}UpdateGoalsResponse
#   goalResults - AdCenterWrapper::ArrayOfGoalResult
class UpdateGoalsResponse
  attr_accessor :goalResults

  def initialize(goalResults = nil)
    @goalResults = goalResults
  end
end

# {https://adcenter.microsoft.com/v8}GetGoalsRequest
#   accountId - SOAP::SOAPLong
class GetGoalsRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v8}GetGoalsResponse
#   goals - AdCenterWrapper::ArrayOfGoal
class GetGoalsResponse
  attr_accessor :goals

  def initialize(goals = nil)
    @goals = goals
  end
end

# {https://adcenter.microsoft.com/v8}DeleteGoalsRequest
#   accountId - SOAP::SOAPLong
#   goalIds - AdCenterWrapper::ArrayOflong
class DeleteGoalsRequest
  attr_accessor :accountId
  attr_accessor :goalIds

  def initialize(accountId = nil, goalIds = nil)
    @accountId = accountId
    @goalIds = goalIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteGoalsResponse
class DeleteGoalsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}SetAnalyticsTypeRequest
#   accountAnalyticsTypes - AdCenterWrapper::ArrayOfAccountAnalyticsType
class SetAnalyticsTypeRequest
  attr_accessor :accountAnalyticsTypes

  def initialize(accountAnalyticsTypes = nil)
    @accountAnalyticsTypes = accountAnalyticsTypes
  end
end

# {https://adcenter.microsoft.com/v8}SetAnalyticsTypeResponse
class SetAnalyticsTypeResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetAnalyticsTypeRequest
#   accountIds - AdCenterWrapper::ArrayOflong
class GetAnalyticsTypeRequest
  attr_accessor :accountIds

  def initialize(accountIds = nil)
    @accountIds = accountIds
  end
end

# {https://adcenter.microsoft.com/v8}GetAnalyticsTypeResponse
#   types - AdCenterWrapper::ArrayOfAnalyticsType
class GetAnalyticsTypeResponse
  attr_accessor :types

  def initialize(types = nil)
    @types = types
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignAdExtensionsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class GetCampaignAdExtensionsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignAdExtensionsResponse
#   adExtensions - AdCenterWrapper::ArrayOfAdExtension
class GetCampaignAdExtensionsResponse
  attr_accessor :adExtensions

  def initialize(adExtensions = nil)
    @adExtensions = adExtensions
  end
end

# {https://adcenter.microsoft.com/v8}SetCampaignAdExtensionsRequest
#   accountId - SOAP::SOAPLong
#   adExtensions - AdCenterWrapper::ArrayOfAdExtension
class SetCampaignAdExtensionsRequest
  attr_accessor :accountId
  attr_accessor :adExtensions

  def initialize(accountId = nil, adExtensions = nil)
    @accountId = accountId
    @adExtensions = adExtensions
  end
end

# {https://adcenter.microsoft.com/v8}SetCampaignAdExtensionsResponse
class SetCampaignAdExtensionsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaigns - AdCenterWrapper::ArrayOfCampaign
class AddCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaigns

  def initialize(accountId = nil, campaigns = nil)
    @accountId = accountId
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v8}AddCampaignsResponse
#   campaignIds - AdCenterWrapper::ArrayOflong
class AddCampaignsResponse
  attr_accessor :campaignIds

  def initialize(campaignIds = nil)
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignsByAccountIdRequest
#   accountId - SOAP::SOAPLong
class GetCampaignsByAccountIdRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignsByAccountIdResponse
#   campaigns - AdCenterWrapper::ArrayOfCampaign
class GetCampaignsByAccountIdResponse
  attr_accessor :campaigns

  def initialize(campaigns = nil)
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignsByIdsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class GetCampaignsByIdsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetCampaignsByIdsResponse
#   campaigns - AdCenterWrapper::ArrayOfCampaign
class GetCampaignsByIdsResponse
  attr_accessor :campaigns

  def initialize(campaigns = nil)
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v8}PauseCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class PauseCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}PauseCampaignsResponse
class PauseCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}ResumeCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class ResumeCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}ResumeCampaignsResponse
class ResumeCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}DeleteCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class DeleteCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteCampaignsResponse
class DeleteCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}UpdateCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaigns - AdCenterWrapper::ArrayOfCampaign
class UpdateCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaigns

  def initialize(accountId = nil, campaigns = nil)
    @accountId = accountId
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v8}UpdateCampaignsResponse
class UpdateCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByCampaignIdsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class GetNegativeKeywordsByCampaignIdsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByCampaignIdsResponse
#   campaignNegativeKeywords - AdCenterWrapper::ArrayOfCampaignNegativeKeywords
class GetNegativeKeywordsByCampaignIdsResponse
  attr_accessor :campaignNegativeKeywords

  def initialize(campaignNegativeKeywords = nil)
    @campaignNegativeKeywords = campaignNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignNegativeKeywords - AdCenterWrapper::ArrayOfCampaignNegativeKeywords
class SetNegativeKeywordsToCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignNegativeKeywords

  def initialize(accountId = nil, campaignNegativeKeywords = nil)
    @accountId = accountId
    @campaignNegativeKeywords = campaignNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToCampaignsResponse
class SetNegativeKeywordsToCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeSitesByCampaignIdsRequest
#   accountId - SOAP::SOAPLong
#   campaignIds - AdCenterWrapper::ArrayOflong
class GetNegativeSitesByCampaignIdsRequest
  attr_accessor :accountId
  attr_accessor :campaignIds

  def initialize(accountId = nil, campaignIds = nil)
    @accountId = accountId
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeSitesByCampaignIdsResponse
#   campaignNegativeSites - AdCenterWrapper::ArrayOfCampaignNegativeSites
class GetNegativeSitesByCampaignIdsResponse
  attr_accessor :campaignNegativeSites

  def initialize(campaignNegativeSites = nil)
    @campaignNegativeSites = campaignNegativeSites
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeSitesToCampaignsRequest
#   accountId - SOAP::SOAPLong
#   campaignNegativeSites - AdCenterWrapper::ArrayOfCampaignNegativeSites
class SetNegativeSitesToCampaignsRequest
  attr_accessor :accountId
  attr_accessor :campaignNegativeSites

  def initialize(accountId = nil, campaignNegativeSites = nil)
    @accountId = accountId
    @campaignNegativeSites = campaignNegativeSites
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeSitesToCampaignsResponse
class SetNegativeSitesToCampaignsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroups - AdCenterWrapper::ArrayOfAdGroup
class AddAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroups

  def initialize(campaignId = nil, adGroups = nil)
    @campaignId = campaignId
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v8}AddAdGroupsResponse
#   adGroupIds - AdCenterWrapper::ArrayOflong
class AddAdGroupsResponse
  attr_accessor :adGroupIds

  def initialize(adGroupIds = nil)
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class DeleteAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteAdGroupsResponse
class DeleteAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetAdGroupsByIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class GetAdGroupsByIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}GetAdGroupsByIdsResponse
#   adGroups - AdCenterWrapper::ArrayOfAdGroup
class GetAdGroupsByIdsResponse
  attr_accessor :adGroups

  def initialize(adGroups = nil)
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v8}GetAdGroupsByCampaignIdRequest
#   campaignId - SOAP::SOAPLong
class GetAdGroupsByCampaignIdRequest
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v8}GetAdGroupsByCampaignIdResponse
#   adGroups - AdCenterWrapper::ArrayOfAdGroup
class GetAdGroupsByCampaignIdResponse
  attr_accessor :adGroups

  def initialize(adGroups = nil)
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v8}PauseAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class PauseAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}PauseAdGroupsResponse
class PauseAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}ResumeAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class ResumeAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}ResumeAdGroupsResponse
class ResumeAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}SubmitAdGroupForApprovalRequest
#   adGroupId - SOAP::SOAPLong
class SubmitAdGroupForApprovalRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}SubmitAdGroupForApprovalResponse
class SubmitAdGroupForApprovalResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}UpdateAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroups - AdCenterWrapper::ArrayOfAdGroup
class UpdateAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroups

  def initialize(campaignId = nil, adGroups = nil)
    @campaignId = campaignId
    @adGroups = adGroups
  end
end

# {https://adcenter.microsoft.com/v8}UpdateAdGroupsResponse
class UpdateAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByAdGroupIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class GetNegativeKeywordsByAdGroupIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeKeywordsByAdGroupIdsResponse
#   adGroupNegativeKeywords - AdCenterWrapper::ArrayOfAdGroupNegativeKeywords
class GetNegativeKeywordsByAdGroupIdsResponse
  attr_accessor :adGroupNegativeKeywords

  def initialize(adGroupNegativeKeywords = nil)
    @adGroupNegativeKeywords = adGroupNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupNegativeKeywords - AdCenterWrapper::ArrayOfAdGroupNegativeKeywords
class SetNegativeKeywordsToAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupNegativeKeywords

  def initialize(campaignId = nil, adGroupNegativeKeywords = nil)
    @campaignId = campaignId
    @adGroupNegativeKeywords = adGroupNegativeKeywords
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeKeywordsToAdGroupsResponse
class SetNegativeKeywordsToAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeSitesByAdGroupIdsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupIds - AdCenterWrapper::ArrayOflong
class GetNegativeSitesByAdGroupIdsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupIds

  def initialize(campaignId = nil, adGroupIds = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}GetNegativeSitesByAdGroupIdsResponse
#   adGroupNegativeSites - AdCenterWrapper::ArrayOfAdGroupNegativeSites
class GetNegativeSitesByAdGroupIdsResponse
  attr_accessor :adGroupNegativeSites

  def initialize(adGroupNegativeSites = nil)
    @adGroupNegativeSites = adGroupNegativeSites
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeSitesToAdGroupsRequest
#   campaignId - SOAP::SOAPLong
#   adGroupNegativeSites - AdCenterWrapper::ArrayOfAdGroupNegativeSites
class SetNegativeSitesToAdGroupsRequest
  attr_accessor :campaignId
  attr_accessor :adGroupNegativeSites

  def initialize(campaignId = nil, adGroupNegativeSites = nil)
    @campaignId = campaignId
    @adGroupNegativeSites = adGroupNegativeSites
  end
end

# {https://adcenter.microsoft.com/v8}SetNegativeSitesToAdGroupsResponse
class SetNegativeSitesToAdGroupsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddTargetRequest
#   adGroupId - SOAP::SOAPLong
#   target - AdCenterWrapper::Target
class AddTargetRequest
  attr_accessor :adGroupId
  attr_accessor :target

  def initialize(adGroupId = nil, target = nil)
    @adGroupId = adGroupId
    @target = target
  end
end

# {https://adcenter.microsoft.com/v8}AddTargetResponse
#   targetId - SOAP::SOAPLong
class AddTargetResponse
  attr_accessor :targetId

  def initialize(targetId = nil)
    @targetId = targetId
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetRequest
#   adGroupId - SOAP::SOAPLong
class DeleteTargetRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetResponse
class DeleteTargetResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetByAdGroupIdRequest
#   adGroupId - SOAP::SOAPLong
class GetTargetByAdGroupIdRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetByAdGroupIdResponse
#   target - AdCenterWrapper::Target
class GetTargetByAdGroupIdResponse
  attr_accessor :target

  def initialize(target = nil)
    @target = target
  end
end

# {https://adcenter.microsoft.com/v8}UpdateTargetRequest
#   adGroupId - SOAP::SOAPLong
#   target - AdCenterWrapper::Target
class UpdateTargetRequest
  attr_accessor :adGroupId
  attr_accessor :target

  def initialize(adGroupId = nil, target = nil)
    @adGroupId = adGroupId
    @target = target
  end
end

# {https://adcenter.microsoft.com/v8}UpdateTargetResponse
class UpdateTargetResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}AddTargetsToLibraryRequest
#   targets - AdCenterWrapper::ArrayOfTarget
class AddTargetsToLibraryRequest
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v8}AddTargetsToLibraryResponse
#   targetIds - AdCenterWrapper::ArrayOflong
class AddTargetsToLibraryResponse
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v8}UpdateTargetsInLibraryRequest
#   targets - AdCenterWrapper::ArrayOfTarget
class UpdateTargetsInLibraryRequest
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v8}UpdateTargetsInLibraryResponse
class UpdateTargetsInLibraryResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}UpdateDeviceOSTargetsRequest
#   targetAssociations - AdCenterWrapper::ArrayOfTargetAssociation
class UpdateDeviceOSTargetsRequest
  attr_accessor :targetAssociations

  def initialize(targetAssociations = nil)
    @targetAssociations = targetAssociations
  end
end

# {https://adcenter.microsoft.com/v8}UpdateDeviceOSTargetsResponse
class UpdateDeviceOSTargetsResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetsFromLibraryRequest
#   targetIds - AdCenterWrapper::ArrayOflong
class DeleteTargetsFromLibraryRequest
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetsFromLibraryResponse
class DeleteTargetsFromLibraryResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsInfoFromLibraryRequest
class GetTargetsInfoFromLibraryRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsInfoFromLibraryResponse
#   targetsInfo - AdCenterWrapper::ArrayOfTargetInfo
class GetTargetsInfoFromLibraryResponse
  attr_accessor :targetsInfo

  def initialize(targetsInfo = nil)
    @targetsInfo = targetsInfo
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByIdsRequest
#   targetIds - AdCenterWrapper::ArrayOflong
class GetTargetsByIdsRequest
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByIdsResponse
#   targets - AdCenterWrapper::ArrayOfTarget
class GetTargetsByIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v8}GetDeviceOSTargetsByIdsRequest
#   targetIds - AdCenterWrapper::ArrayOflong
class GetDeviceOSTargetsByIdsRequest
  attr_accessor :targetIds

  def initialize(targetIds = nil)
    @targetIds = targetIds
  end
end

# {https://adcenter.microsoft.com/v8}GetDeviceOSTargetsByIdsResponse
#   targetAssociations - AdCenterWrapper::ArrayOfTargetAssociation
class GetDeviceOSTargetsByIdsResponse
  attr_accessor :targetAssociations

  def initialize(targetAssociations = nil)
    @targetAssociations = targetAssociations
  end
end

# {https://adcenter.microsoft.com/v8}SetTargetToAdGroupRequest
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

# {https://adcenter.microsoft.com/v8}SetTargetToAdGroupResponse
class SetTargetToAdGroupResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetFromAdGroupRequest
#   adGroupId - SOAP::SOAPLong
class DeleteTargetFromAdGroupRequest
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetFromAdGroupResponse
class DeleteTargetFromAdGroupResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByAdGroupIdsRequest
#   adGroupIds - AdCenterWrapper::ArrayOflong
class GetTargetsByAdGroupIdsRequest
  attr_accessor :adGroupIds

  def initialize(adGroupIds = nil)
    @adGroupIds = adGroupIds
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByAdGroupIdsResponse
#   targets - AdCenterWrapper::ArrayOfTarget
class GetTargetsByAdGroupIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v8}SetTargetToCampaignRequest
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

# {https://adcenter.microsoft.com/v8}SetTargetToCampaignResponse
class SetTargetToCampaignResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetFromCampaignRequest
#   campaignId - SOAP::SOAPLong
class DeleteTargetFromCampaignRequest
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v8}DeleteTargetFromCampaignResponse
class DeleteTargetFromCampaignResponse
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByCampaignIdsRequest
#   campaignIds - AdCenterWrapper::ArrayOflong
class GetTargetsByCampaignIdsRequest
  attr_accessor :campaignIds

  def initialize(campaignIds = nil)
    @campaignIds = campaignIds
  end
end

# {https://adcenter.microsoft.com/v8}GetTargetsByCampaignIdsResponse
#   targets - AdCenterWrapper::ArrayOfTarget
class GetTargetsByCampaignIdsResponse
  attr_accessor :targets

  def initialize(targets = nil)
    @targets = targets
  end
end

# {https://adcenter.microsoft.com/v8}AddAdsRequest
#   adGroupId - SOAP::SOAPLong
#   ads - AdCenterWrapper::ArrayOfAd
class AddAdsRequest
  attr_accessor :adGroupId
  attr_accessor :ads

  def initialize(adGroupId = nil, ads = nil)
    @adGroupId = adGroupId
    @ads = ads
  end
end

# {https://adcenter.microsoft.com/v8}AddAdsResponse
#   adIds - AdCenterWrapper::ArrayOflong
class AddAdsResponse
  attr_accessor :adIds

  def initialize(adIds = nil)
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteAdsRequest
#   adGroupId - SOAP::SOAPLong
#   adIds - AdCenterWrapper::ArrayOflong
class DeleteAdsRequest
  attr_accessor :adGroupId
  attr_accessor :adIds

  def initialize(adGroupId = nil, adIds = nil)
    @adGroupId = adGroupId
    @adIds = adIds
  end
end

# {https://adcenter.microsoft.com/v8}DeleteAdsResponse
class DeleteAdsResponse
  def initialize
  end
end


end
