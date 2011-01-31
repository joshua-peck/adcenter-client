require 'adcenter_wrapper_entities'
require 'soap/mapping'

module AdCenterWrapper

module CampaignManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts"
  NsV7 = "https://adcenter.microsoft.com/v7"

  EncodedRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_type => XSD::QName.new(NsV7, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_type => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_type => XSD::QName.new(NsV7, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["AdCenterWrapper::BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["AdCenterWrapper::BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_type => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV7, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegment,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["AdCenterWrapper::Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Segment,
    :schema_type => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_type => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_type => XSD::QName.new(NsV7, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_type => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["AdCenterWrapper::OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CashBackInfo,
    :schema_type => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["AdCenterWrapper::CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["AdCenterWrapper::KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordBid,
    :schema_type => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["AdCenterWrapper::KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MatchTypeEstimate,
    :schema_type => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_type => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_type => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_type => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_type => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_type => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_type => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["AdCenterWrapper::CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_type => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_type => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdCenterWrapper::AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_type => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["AdCenterWrapper::BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["AdCenterWrapper::SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_type => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralTarget,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["AdCenterWrapper::BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_type => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_type => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_type => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_type => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_type => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_type => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_type => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_type => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_type => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_type => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SegmentTarget,
    :schema_type => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["AdCenterWrapper::SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_type => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
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
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfbase64Binary,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
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
    :class => AdCenterWrapper::ArrayOfAdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdCenterWrapper::AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_type => XSD::QName.new(NsV7, "AdStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_type => XSD::QName.new(NsV7, "AdType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralBidStatus,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Language,
    :schema_type => XSD::QName.new(NsV7, "Language")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_type => XSD::QName.new(NsV7, "Network")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CashBackStatus,
    :schema_type => XSD::QName.new(NsV7, "CashBackStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::OverridePriority,
    :schema_type => XSD::QName.new(NsV7, "OverridePriority")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_type => XSD::QName.new(NsV7, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_type => XSD::QName.new(NsV7, "Day")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_type => XSD::QName.new(NsV7, "PaymentType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_type => XSD::QName.new(NsV7, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_type => XSD::QName.new(NsV7, "BiddingModel")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_type => XSD::QName.new(NsV7, "AgeRange")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_type => XSD::QName.new(NsV7, "DeviceType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_type => XSD::QName.new(NsV7, "GenderType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_type => XSD::QName.new(NsV7, "HourRange")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_type => XSD::QName.new(NsV7, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_type => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_type => XSD::QName.new(NsV7, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["AdCenterWrapper::BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["AdCenterWrapper::BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_type => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV7, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegment,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["AdCenterWrapper::Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Segment,
    :schema_type => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_type => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_type => XSD::QName.new(NsV7, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_type => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["AdCenterWrapper::OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CashBackInfo,
    :schema_type => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["AdCenterWrapper::CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["AdCenterWrapper::KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordBid,
    :schema_type => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["AdCenterWrapper::KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MatchTypeEstimate,
    :schema_type => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_type => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_type => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_type => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_type => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_type => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_type => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["AdCenterWrapper::CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_type => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_type => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdCenterWrapper::AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_type => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["AdCenterWrapper::BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["AdCenterWrapper::SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_type => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTarget,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["AdCenterWrapper::BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_type => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_type => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_type => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_type => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_type => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_type => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_type => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_type => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_type => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_type => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentTarget,
    :schema_type => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["AdCenterWrapper::SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_type => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
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
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfbase64Binary,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
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
    :class => AdCenterWrapper::ArrayOfAdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdCenterWrapper::AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_type => XSD::QName.new(NsV7, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_type => XSD::QName.new(NsV7, "AdType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralBidStatus,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Language,
    :schema_type => XSD::QName.new(NsV7, "Language")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_type => XSD::QName.new(NsV7, "Network")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CashBackStatus,
    :schema_type => XSD::QName.new(NsV7, "CashBackStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OverridePriority,
    :schema_type => XSD::QName.new(NsV7, "OverridePriority")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_type => XSD::QName.new(NsV7, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_type => XSD::QName.new(NsV7, "Day")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_type => XSD::QName.new(NsV7, "PaymentType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_type => XSD::QName.new(NsV7, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_type => XSD::QName.new(NsV7, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_type => XSD::QName.new(NsV7, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_type => XSD::QName.new(NsV7, "DeviceType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_type => XSD::QName.new(NsV7, "GenderType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_type => XSD::QName.new(NsV7, "HourRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_name => XSD::QName.new(NsV7, "MobileAd"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_name => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_name => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_name => XSD::QName.new(NsV7, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_name => XSD::QName.new(NsV7, "AdType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_name => XSD::QName.new(NsV7, "TextAd"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBids", ["AdCenterWrapper::ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["AdCenterWrapper::BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralBid,
    :schema_name => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["AdCenterWrapper::BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_name => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralBidStatus,
    :schema_name => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_name => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_name => XSD::QName.new(NsV7, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_name => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCustomSegmentsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCustomSegmentsResponse"),
    :schema_element => [
      ["customSegments", ["AdCenterWrapper::ArrayOfSegment", XSD::QName.new(NsV7, "CustomSegments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegment,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["AdCenterWrapper::Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Segment,
    :schema_name => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddSegmentsRequest"),
    :schema_element => [
      ["segments", ["AdCenterWrapper::ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddSegmentsResponse"),
    :schema_element => [
      ["segmentIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteSegmentsRequest"),
    :schema_element => [
      ["segmentIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteSegmentsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSegmentsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsByIdsRequest"),
    :schema_element => [
      ["segmentIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSegmentsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsByIdsResponse"),
    :schema_element => [
      ["segments", ["AdCenterWrapper::ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsResponse"),
    :schema_element => [
      ["segments", ["AdCenterWrapper::ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetUsersToSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetUsersToSegmentsRequest"),
    :schema_element => [
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["userHash", ["AdCenterWrapper::ArrayOfbase64Binary", XSD::QName.new(NsV7, "UserHash")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetUsersToSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetUsersToSegmentsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteUsersFromSegmentRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteUsersFromSegmentRequest"),
    :schema_element => [
      ["userHash", ["AdCenterWrapper::ArrayOfbase64Binary", XSD::QName.new(NsV7, "UserHash")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteUsersFromSegmentResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteUsersFromSegmentResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNormalizedStringsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNormalizedStringsRequest"),
    :schema_element => [
      ["strings", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Strings")], [0, 1]],
      ["language", ["AdCenterWrapper::Language", XSD::QName.new(NsV7, "Language")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Language,
    :schema_name => XSD::QName.new(NsV7, "Language")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNormalizedStringsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNormalizedStringsResponse"),
    :schema_element => [
      ["normalizedStrings", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NormalizedStrings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["AdCenterWrapper::ArrayOfEditorialReasonCollection", XSD::QName.new(NsV7, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_name => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["AdCenterWrapper::ArrayOfEditorialReasonCollection", XSD::QName.new(NsV7, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNetworksByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNetworksByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNetworksByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNetworksByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNetworks", ["AdCenterWrapper::ArrayOfAdGroupNetwork", XSD::QName.new(NsV7, "AdGroupNetworks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_name => XSD::QName.new(NsV7, "Network")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNetworksToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNetworksToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupNetworks", ["AdCenterWrapper::ArrayOfAdGroupNetwork", XSD::QName.new(NsV7, "AdGroupNetworks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNetworksToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNetworksToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddAdsResponse"),
    :schema_element => [
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_name => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_name => XSD::QName.new(NsV7, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByEditorialStatusResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByIdsResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByAdGroupIdResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_name => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["AdCenterWrapper::OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CashBackInfo,
    :schema_name => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["AdCenterWrapper::CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CashBackStatus,
    :schema_name => XSD::QName.new(NsV7, "CashBackStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_name => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OverridePriority,
    :schema_name => XSD::QName.new(NsV7, "OverridePriority")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_name => XSD::QName.new(NsV7, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddKeywordsResponse"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByEditorialStatusResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByIdsResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByAdGroupIdResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEstimatesByBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEstimatesByBidsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Currency")], [0, 1]],
      ["keywordBids", ["AdCenterWrapper::ArrayOfKeywordBid", XSD::QName.new(NsV7, "KeywordBids")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["AdCenterWrapper::KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordBid,
    :schema_name => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_name => XSD::QName.new(NsV7, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEstimatesByBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEstimatesByBidsResponse"),
    :schema_element => [
      ["keywordEstimates", ["AdCenterWrapper::ArrayOfKeywordEstimate", XSD::QName.new(NsV7, "KeywordEstimates")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordEstimate,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["AdCenterWrapper::KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEstimate,
    :schema_name => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["AdCenterWrapper::MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MatchTypeEstimate,
    :schema_name => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "AddBusinessesRequest"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_name => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_name => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_name => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_name => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_name => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_name => XSD::QName.new(NsV7, "Day")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_name => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_name => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_name => XSD::QName.new(NsV7, "PaymentType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_name => XSD::QName.new(NsV7, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "AddBusinessesResponse"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateBusinessesRequest"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteBusinessesRequest"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesInfoRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesInfoRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesInfoResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesInfoResponse"),
    :schema_element => [
      ["businessesInfo", ["AdCenterWrapper::ArrayOfBusinessInfo", XSD::QName.new(NsV7, "BusinessesInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_name => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesByIdsRequest"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesByIdsResponse"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_name => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_name => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddSitePlacementsResponse"),
    :schema_element => [
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByIdsResponse"),
    :schema_element => [
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByAdGroupIdResponse"),
    :schema_element => [
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPlacementDetailsForUrlsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetPlacementDetailsForUrlsRequest"),
    :schema_element => [
      ["urls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Urls")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPlacementDetailsForUrlsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetPlacementDetailsForUrlsResponse"),
    :schema_element => [
      ["placementDetails", ["AdCenterWrapper::ArrayOfArrayOfPlacementDetail", XSD::QName.new(NsV7, "PlacementDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_name => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_name => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_name => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBids", ["AdCenterWrapper::ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddBehavioralBidsResponse"),
    :schema_element => [
      ["behavioralBidIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBehavioralBidsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBehavioralBidsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByIdsResponse"),
    :schema_element => [
      ["behavioralBids", ["AdCenterWrapper::ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBehavioralBidsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBehavioralBidsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByAdGroupIdResponse"),
    :schema_element => [
      ["behavioralBids", ["AdCenterWrapper::ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_name => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_name => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_name => XSD::QName.new(NsV7, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddCampaignsResponse"),
    :schema_element => [
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByAccountIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByAccountIdRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByAccountIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByAccountIdResponse"),
    :schema_element => [
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByIdsResponse"),
    :schema_element => [
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsInfoByAccountIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsInfoByAccountIdRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsInfoByAccountIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsInfoByAccountIdResponse"),
    :schema_element => [
      ["campaignsInfo", ["AdCenterWrapper::ArrayOfCampaignInfo", XSD::QName.new(NsV7, "CampaignsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["AdCenterWrapper::CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_name => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByCampaignIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByCampaignIdsResponse"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignNegativeKeywords", ["AdCenterWrapper::ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_name => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_name => XSD::QName.new(NsV7, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_name => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_name => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddAdGroupsResponse"),
    :schema_element => [
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByIdsResponse"),
    :schema_element => [
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByCampaignIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByCampaignIdRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByCampaignIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByCampaignIdResponse"),
    :schema_element => [
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitAdGroupForApprovalRequest,
    :schema_name => XSD::QName.new(NsV7, "SubmitAdGroupForApprovalRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitAdGroupForApprovalResponse,
    :schema_name => XSD::QName.new(NsV7, "SubmitAdGroupForApprovalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsInfoByCampaignIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsInfoByCampaignIdRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsInfoByCampaignIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsInfoByCampaignIdResponse"),
    :schema_element => [
      ["adGroupsInfo", ["AdCenterWrapper::ArrayOfAdGroupInfo", XSD::QName.new(NsV7, "AdGroupsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdCenterWrapper::AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupInfo,
    :schema_name => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupNegativeKeywords", ["AdCenterWrapper::ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "AddTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_name => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["AdCenterWrapper::BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["AdCenterWrapper::SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_name => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_name => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_name => XSD::QName.new(NsV7, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_name => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTarget,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["AdCenterWrapper::BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetBid,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_name => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_name => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_name => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_name => XSD::QName.new(NsV7, "DeviceType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_name => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_name => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_name => XSD::QName.new(NsV7, "GenderType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_name => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_name => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_name => XSD::QName.new(NsV7, "HourRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_name => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_name => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_name => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_name => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_name => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_name => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_name => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_name => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_name => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_name => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_name => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentTarget,
    :schema_name => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["AdCenterWrapper::SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentTargetBid,
    :schema_name => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["AdCenterWrapper::CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "AddTargetResponse"),
    :schema_element => [
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetByAdGroupIdResponse"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetsToLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "AddTargetsToLibraryRequest"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetsToLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "AddTargetsToLibraryResponse"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetsInLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetsInLibraryRequest"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetsInLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetsInLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetsFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetsFromLibraryRequest"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetsFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetsFromLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsInfoFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsInfoFromLibraryRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsInfoFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsInfoFromLibraryResponse"),
    :schema_element => [
      ["targetsInfo", ["AdCenterWrapper::ArrayOfTargetInfo", XSD::QName.new(NsV7, "TargetsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_name => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByIdsRequest"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToAdGroupRequest,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToAdGroupResponse,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromAdGroupRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromAdGroupResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByAdGroupIdsRequest"),
    :schema_element => [
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByAdGroupIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToCampaignRequest,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToCampaignResponse,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromCampaignRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromCampaignResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByCampaignIdsRequest"),
    :schema_element => [
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByCampaignIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
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

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfbase64Binary,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
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
    :class => AdCenterWrapper::AdComponent,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNetwork,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdCenterWrapper::AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNetwork,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

end

end
