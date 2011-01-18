require 'CampaignManagementService.rb'
require 'soap/mapping'

module CampaignManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts"
  NsV7 = "https://adcenter.microsoft.com/v7"

  EncodedRegistry.register(
    :class => MobileAd,
    :schema_type => XSD::QName.new(NsV7, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => Ad,
    :schema_type => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TextAd,
    :schema_type => XSD::QName.new(NsV7, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Bid,
    :schema_type => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchError,
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
    :class => ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OperationError,
    :schema_type => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSegment,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Segment,
    :schema_type => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => EditorialReason,
    :schema_type => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAd,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => EditorialError,
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
    :class => ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Keyword,
    :schema_type => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CashBackInfo,
    :schema_type => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfKeywordBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => KeywordBid,
    :schema_type => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfKeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => KeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MatchTypeEstimate,
    :schema_type => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Business,
    :schema_type => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => HoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "DayTimeInterval", [0, 1]],
      ["openTime2", "DayTimeInterval", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DayTimeInterval,
    :schema_type => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SitePlacement,
    :schema_type => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MediaType,
    :schema_type => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Dimension,
    :schema_type => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroup,
    :schema_type => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Date,
    :schema_type => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Target,
    :schema_type => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AgeTarget,
    :schema_type => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralTarget,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => DayTarget,
    :schema_type => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => DeviceTarget,
    :schema_type => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GenderTarget,
    :schema_type => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => HourTarget,
    :schema_type => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => HourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => LocationTarget,
    :schema_type => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessTarget,
    :schema_type => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => CityTarget,
    :schema_type => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => CountryTarget,
    :schema_type => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  EncodedRegistry.register(
    :class => RadiusTarget,
    :schema_type => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => StateTarget,
    :schema_type => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => StateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  EncodedRegistry.register(
    :class => SegmentTarget,
    :schema_type => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TargetInfo,
    :schema_type => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfbase64Binary,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  EncodedRegistry.register(
    :class => AdStatus,
    :schema_type => XSD::QName.new(NsV7, "AdStatus")
  )

  EncodedRegistry.register(
    :class => AdType,
    :schema_type => XSD::QName.new(NsV7, "AdType")
  )

  EncodedRegistry.register(
    :class => BehavioralBidStatus,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  EncodedRegistry.register(
    :class => Language,
    :schema_type => XSD::QName.new(NsV7, "Language")
  )

  EncodedRegistry.register(
    :class => Network,
    :schema_type => XSD::QName.new(NsV7, "Network")
  )

  EncodedRegistry.register(
    :class => CashBackStatus,
    :schema_type => XSD::QName.new(NsV7, "CashBackStatus")
  )

  EncodedRegistry.register(
    :class => KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  EncodedRegistry.register(
    :class => OverridePriority,
    :schema_type => XSD::QName.new(NsV7, "OverridePriority")
  )

  EncodedRegistry.register(
    :class => KeywordStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => PricingModel,
    :schema_type => XSD::QName.new(NsV7, "PricingModel")
  )

  EncodedRegistry.register(
    :class => StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  EncodedRegistry.register(
    :class => BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  EncodedRegistry.register(
    :class => Day,
    :schema_type => XSD::QName.new(NsV7, "Day")
  )

  EncodedRegistry.register(
    :class => PaymentType,
    :schema_type => XSD::QName.new(NsV7, "PaymentType")
  )

  EncodedRegistry.register(
    :class => BusinessStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessStatus")
  )

  EncodedRegistry.register(
    :class => SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  EncodedRegistry.register(
    :class => BudgetLimitType,
    :schema_type => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  EncodedRegistry.register(
    :class => CampaignStatus,
    :schema_type => XSD::QName.new(NsV7, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => BiddingModel,
    :schema_type => XSD::QName.new(NsV7, "BiddingModel")
  )

  EncodedRegistry.register(
    :class => AdGroupStatus,
    :schema_type => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AgeRange,
    :schema_type => XSD::QName.new(NsV7, "AgeRange")
  )

  EncodedRegistry.register(
    :class => IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  EncodedRegistry.register(
    :class => DeviceType,
    :schema_type => XSD::QName.new(NsV7, "DeviceType")
  )

  EncodedRegistry.register(
    :class => GenderType,
    :schema_type => XSD::QName.new(NsV7, "GenderType")
  )

  EncodedRegistry.register(
    :class => HourRange,
    :schema_type => XSD::QName.new(NsV7, "HourRange")
  )

  EncodedRegistry.register(
    :class => AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => MobileAd,
    :schema_type => XSD::QName.new(NsV7, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => Ad,
    :schema_type => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TextAd,
    :schema_type => XSD::QName.new(NsV7, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Bid,
    :schema_type => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchError,
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
    :class => ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationError,
    :schema_type => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegment,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Segment,
    :schema_type => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialReason,
    :schema_type => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAd,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialError,
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
    :class => ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Keyword,
    :schema_type => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CashBackInfo,
    :schema_type => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordBid,
    :schema_type => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordEstimate,
    :schema_type => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MatchTypeEstimate,
    :schema_type => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Business,
    :schema_type => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => HoursOfOperation,
    :schema_type => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "DayTimeInterval", [0, 1]],
      ["openTime2", "DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DayTimeInterval,
    :schema_type => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessInfo,
    :schema_type => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePlacement,
    :schema_type => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PlacementDetail,
    :schema_type => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MediaType,
    :schema_type => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Dimension,
    :schema_type => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignInfo,
    :schema_type => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroup,
    :schema_type => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Date,
    :schema_type => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupInfo,
    :schema_type => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Target,
    :schema_type => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeTarget,
    :schema_type => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeTargetBid,
    :schema_type => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTarget,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => DayTarget,
    :schema_type => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DayTargetBid,
    :schema_type => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeviceTarget,
    :schema_type => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GenderTarget,
    :schema_type => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GenderTargetBid,
    :schema_type => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => HourTarget,
    :schema_type => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => HourTargetBid,
    :schema_type => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => LocationTarget,
    :schema_type => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessTarget,
    :schema_type => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => CityTarget,
    :schema_type => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CityTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => CountryTarget,
    :schema_type => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CountryTargetBid,
    :schema_type => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => RadiusTarget,
    :schema_type => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => StateTarget,
    :schema_type => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StateTargetBid,
    :schema_type => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentTarget,
    :schema_type => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentTargetBid,
    :schema_type => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TargetInfo,
    :schema_type => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfbase64Binary,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupNetwork,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdStatus,
    :schema_type => XSD::QName.new(NsV7, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdType,
    :schema_type => XSD::QName.new(NsV7, "AdType")
  )

  LiteralRegistry.register(
    :class => BehavioralBidStatus,
    :schema_type => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  LiteralRegistry.register(
    :class => Language,
    :schema_type => XSD::QName.new(NsV7, "Language")
  )

  LiteralRegistry.register(
    :class => Network,
    :schema_type => XSD::QName.new(NsV7, "Network")
  )

  LiteralRegistry.register(
    :class => CashBackStatus,
    :schema_type => XSD::QName.new(NsV7, "CashBackStatus")
  )

  LiteralRegistry.register(
    :class => KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => OverridePriority,
    :schema_type => XSD::QName.new(NsV7, "OverridePriority")
  )

  LiteralRegistry.register(
    :class => KeywordStatus,
    :schema_type => XSD::QName.new(NsV7, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => PricingModel,
    :schema_type => XSD::QName.new(NsV7, "PricingModel")
  )

  LiteralRegistry.register(
    :class => StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => Day,
    :schema_type => XSD::QName.new(NsV7, "Day")
  )

  LiteralRegistry.register(
    :class => PaymentType,
    :schema_type => XSD::QName.new(NsV7, "PaymentType")
  )

  LiteralRegistry.register(
    :class => BusinessStatus,
    :schema_type => XSD::QName.new(NsV7, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => BudgetLimitType,
    :schema_type => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => CampaignStatus,
    :schema_type => XSD::QName.new(NsV7, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => BiddingModel,
    :schema_type => XSD::QName.new(NsV7, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => AdGroupStatus,
    :schema_type => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AgeRange,
    :schema_type => XSD::QName.new(NsV7, "AgeRange")
  )

  LiteralRegistry.register(
    :class => IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => DeviceType,
    :schema_type => XSD::QName.new(NsV7, "DeviceType")
  )

  LiteralRegistry.register(
    :class => GenderType,
    :schema_type => XSD::QName.new(NsV7, "GenderType")
  )

  LiteralRegistry.register(
    :class => HourRange,
    :schema_type => XSD::QName.new(NsV7, "HourRange")
  )

  LiteralRegistry.register(
    :class => AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => MobileAd,
    :schema_name => XSD::QName.new(NsV7, "MobileAd"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => Ad,
    :schema_name => XSD::QName.new(NsV7, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdEditorialStatus,
    :schema_name => XSD::QName.new(NsV7, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdStatus,
    :schema_name => XSD::QName.new(NsV7, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdType,
    :schema_name => XSD::QName.new(NsV7, "AdType")
  )

  LiteralRegistry.register(
    :class => TextAd,
    :schema_name => XSD::QName.new(NsV7, "TextAd"),
    :schema_element => [
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["status", ["AdStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["type", ["AdType", XSD::QName.new(NsV7, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBids", ["ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralBid"),
    :schema_element => [
      ["behavioralBid", ["BehavioralBid[]", XSD::QName.new(NsV7, "BehavioralBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralBid,
    :schema_name => XSD::QName.new(NsV7, "BehavioralBid"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["status", ["BehavioralBidStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Bid,
    :schema_name => XSD::QName.new(NsV7, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralBidStatus,
    :schema_name => XSD::QName.new(NsV7, "BehavioralBidStatus")
  )

  LiteralRegistry.register(
    :class => UpdateBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ApiFaultDetail,
    :schema_name => XSD::QName.new(NsV7, "ApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsV7, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchError,
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
    :class => ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsV7, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationError,
    :schema_name => XSD::QName.new(NsV7, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCustomSegmentsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetCustomSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCustomSegmentsResponse"),
    :schema_element => [
      ["customSegments", ["ArrayOfSegment", XSD::QName.new(NsV7, "CustomSegments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegment,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegment"),
    :schema_element => [
      ["segment", ["Segment[]", XSD::QName.new(NsV7, "Segment")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Segment,
    :schema_name => XSD::QName.new(NsV7, "Segment"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddSegmentsRequest"),
    :schema_element => [
      ["segments", ["ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddSegmentsResponse"),
    :schema_element => [
      ["segmentIds", ["ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteSegmentsRequest"),
    :schema_element => [
      ["segmentIds", ["ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteSegmentsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetSegmentsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsByIdsRequest"),
    :schema_element => [
      ["segmentIds", ["ArrayOflong", XSD::QName.new(NsV7, "SegmentIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSegmentsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsByIdsResponse"),
    :schema_element => [
      ["segments", ["ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSegmentsResponse"),
    :schema_element => [
      ["segments", ["ArrayOfSegment", XSD::QName.new(NsV7, "Segments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetUsersToSegmentsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetUsersToSegmentsRequest"),
    :schema_element => [
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")], [0, 1]],
      ["userHash", ["ArrayOfbase64Binary", XSD::QName.new(NsV7, "UserHash")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetUsersToSegmentsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetUsersToSegmentsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteUsersFromSegmentRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteUsersFromSegmentRequest"),
    :schema_element => [
      ["userHash", ["ArrayOfbase64Binary", XSD::QName.new(NsV7, "UserHash")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUsersFromSegmentResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteUsersFromSegmentResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetNormalizedStringsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNormalizedStringsRequest"),
    :schema_element => [
      ["strings", ["ArrayOfstring", XSD::QName.new(NsV7, "Strings")], [0, 1]],
      ["language", ["Language", XSD::QName.new(NsV7, "Language")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Language,
    :schema_name => XSD::QName.new(NsV7, "Language")
  )

  LiteralRegistry.register(
    :class => GetNormalizedStringsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNormalizedStringsResponse"),
    :schema_element => [
      ["normalizedStrings", ["ArrayOfstring", XSD::QName.new(NsV7, "NormalizedStrings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["ArrayOfEditorialReasonCollection", XSD::QName.new(NsV7, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["EditorialReasonCollection[]", XSD::QName.new(NsV7, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV7, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["ArrayOfEditorialReason", XSD::QName.new(NsV7, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialReason,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["EditorialReason[]", XSD::QName.new(NsV7, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialReason,
    :schema_name => XSD::QName.new(NsV7, "EditorialReason"),
    :schema_element => [
      ["location", ["AdComponent", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["ArrayOfEditorialReasonCollection", XSD::QName.new(NsV7, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNetworksByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNetworksByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNetworksByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNetworksByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNetworks", ["ArrayOfAdGroupNetwork", XSD::QName.new(NsV7, "AdGroupNetworks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Network,
    :schema_name => XSD::QName.new(NsV7, "Network")
  )

  LiteralRegistry.register(
    :class => SetNetworksToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNetworksToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupNetworks", ["ArrayOfAdGroupNetwork", XSD::QName.new(NsV7, "AdGroupNetworks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetNetworksToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNetworksToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["ads", ["ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAd,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["Ad[]", XSD::QName.new(NsV7, "Ad")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddAdsResponse"),
    :schema_element => [
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialApiFaultDetail,
    :schema_name => XSD::QName.new(NsV7, "EditorialApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsV7, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["ArrayOfEditorialError", XSD::QName.new(NsV7, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsV7, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfEditorialError,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["EditorialError[]", XSD::QName.new(NsV7, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EditorialError,
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
    :class => DeleteAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetAdsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["AdEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByEditorialStatusResponse"),
    :schema_element => [
      ["ads", ["ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByIdsResponse"),
    :schema_element => [
      ["ads", ["ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdsByAdGroupIdResponse"),
    :schema_element => [
      ["ads", ["ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["ads", ["ArrayOfAd", XSD::QName.new(NsV7, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => PauseAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeAdsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["adIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeAdsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywords", ["ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeyword,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["Keyword[]", XSD::QName.new(NsV7, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Keyword,
    :schema_name => XSD::QName.new(NsV7, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["overridePriority", ["OverridePriority", XSD::QName.new(NsV7, "OverridePriority")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["status", ["KeywordStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CashBackInfo,
    :schema_name => XSD::QName.new(NsV7, "CashBackInfo"),
    :schema_element => [
      ["cashBackAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "CashBackAmount")], [0, 1]],
      ["cashBackStatus", ["CashBackStatus", XSD::QName.new(NsV7, "CashBackStatus")], [0, 1]],
      ["cashBackText", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CashBackText")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CashBackStatus,
    :schema_name => XSD::QName.new(NsV7, "CashBackStatus")
  )

  LiteralRegistry.register(
    :class => KeywordEditorialStatus,
    :schema_name => XSD::QName.new(NsV7, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => OverridePriority,
    :schema_name => XSD::QName.new(NsV7, "OverridePriority")
  )

  LiteralRegistry.register(
    :class => KeywordStatus,
    :schema_name => XSD::QName.new(NsV7, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AddKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddKeywordsResponse"),
    :schema_element => [
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetKeywordsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["KeywordEditorialStatus", XSD::QName.new(NsV7, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByEditorialStatusResponse"),
    :schema_element => [
      ["keywords", ["ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByIdsResponse"),
    :schema_element => [
      ["keywords", ["ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKeywordsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordsByAdGroupIdResponse"),
    :schema_element => [
      ["keywords", ["ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywordIds", ["ArrayOflong", XSD::QName.new(NsV7, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdateKeywordsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["keywords", ["ArrayOfKeyword", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateKeywordsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetKeywordEstimatesByBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEstimatesByBidsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Currency")], [0, 1]],
      ["keywordBids", ["ArrayOfKeywordBid", XSD::QName.new(NsV7, "KeywordBids")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordBid"),
    :schema_element => [
      ["keywordBid", ["KeywordBid[]", XSD::QName.new(NsV7, "KeywordBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordBid,
    :schema_name => XSD::QName.new(NsV7, "KeywordBid"),
    :schema_element => [
      ["broadMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["exactMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["keyword", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Keyword")]],
      ["phraseMatchBid", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PricingModel,
    :schema_name => XSD::QName.new(NsV7, "PricingModel")
  )

  LiteralRegistry.register(
    :class => GetKeywordEstimatesByBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetKeywordEstimatesByBidsResponse"),
    :schema_element => [
      ["keywordEstimates", ["ArrayOfKeywordEstimate", XSD::QName.new(NsV7, "KeywordEstimates")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordEstimate,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordEstimate"),
    :schema_element => [
      ["keywordEstimate", ["KeywordEstimate[]", XSD::QName.new(NsV7, "KeywordEstimate")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordEstimate,
    :schema_name => XSD::QName.new(NsV7, "KeywordEstimate"),
    :schema_element => [
      ["averageMonthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "AverageMonthlyCost")], [0, 1]],
      ["averageMonthlyPosition", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "AverageMonthlyPosition")], [0, 1]],
      ["broadKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "BroadKeywordEstimate")], [0, 1]],
      ["estimatedTotalMonthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "EstimatedTotalMonthlyImpressions")], [0, 1]],
      ["exactKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "ExactKeywordEstimate")], [0, 1]],
      ["phraseKeywordEstimate", ["MatchTypeEstimate", XSD::QName.new(NsV7, "PhraseKeywordEstimate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MatchTypeEstimate,
    :schema_name => XSD::QName.new(NsV7, "MatchTypeEstimate"),
    :schema_element => [
      ["monthlyCost", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyCost")], [0, 1]],
      ["monthlyImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "MonthlyImpressions")], [0, 1]],
      ["position", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Position")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "AddBusinessesRequest"),
    :schema_element => [
      ["businesses", ["ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusiness,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["Business[]", XSD::QName.new(NsV7, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Business,
    :schema_name => XSD::QName.new(NsV7, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["BusinessImageIcon", XSD::QName.new(NsV7, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Email")], [0, 1]],
      ["geoCodeStatus", ["BusinessGeoCodeStatus", XSD::QName.new(NsV7, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["ArrayOfHoursOfOperation", XSD::QName.new(NsV7, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV7, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["ArrayOfPaymentType", XSD::QName.new(NsV7, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV7, "StateOrProvince")], [0, 1]],
      ["status", ["BusinessStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV7, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessImageIcon,
    :schema_name => XSD::QName.new(NsV7, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["StandardBusinessIcon", XSD::QName.new(NsV7, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StandardBusinessIcon,
    :schema_name => XSD::QName.new(NsV7, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => BusinessGeoCodeStatus,
    :schema_name => XSD::QName.new(NsV7, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => ArrayOfHoursOfOperation,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["HoursOfOperation[]", XSD::QName.new(NsV7, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => HoursOfOperation,
    :schema_name => XSD::QName.new(NsV7, "HoursOfOperation"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["openTime1", "DayTimeInterval", [0, 1]],
      ["openTime2", "DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Day,
    :schema_name => XSD::QName.new(NsV7, "Day")
  )

  LiteralRegistry.register(
    :class => DayTimeInterval,
    :schema_name => XSD::QName.new(NsV7, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["TimeOfTheDay", XSD::QName.new(NsV7, "Begin")], [0, 1]],
      ["v_end", ["TimeOfTheDay", XSD::QName.new(NsV7, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TimeOfTheDay,
    :schema_name => XSD::QName.new(NsV7, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV7, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPaymentType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["PaymentType[]", XSD::QName.new(NsV7, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentType,
    :schema_name => XSD::QName.new(NsV7, "PaymentType")
  )

  LiteralRegistry.register(
    :class => BusinessStatus,
    :schema_name => XSD::QName.new(NsV7, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => AddBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "AddBusinessesResponse"),
    :schema_element => [
      ["businessIds", ["ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateBusinessesRequest"),
    :schema_element => [
      ["businesses", ["ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteBusinessesRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteBusinessesRequest"),
    :schema_element => [
      ["businessIds", ["ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteBusinessesResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetBusinessesInfoRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesInfoRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetBusinessesInfoResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesInfoResponse"),
    :schema_element => [
      ["businessesInfo", ["ArrayOfBusinessInfo", XSD::QName.new(NsV7, "BusinessesInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusinessInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["BusinessInfo[]", XSD::QName.new(NsV7, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessInfo,
    :schema_name => XSD::QName.new(NsV7, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBusinessesByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesByIdsRequest"),
    :schema_element => [
      ["businessIds", ["ArrayOflong", XSD::QName.new(NsV7, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBusinessesByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBusinessesByIdsResponse"),
    :schema_element => [
      ["businesses", ["ArrayOfBusiness", XSD::QName.new(NsV7, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSitePlacement,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["SitePlacement[]", XSD::QName.new(NsV7, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePlacement,
    :schema_name => XSD::QName.new(NsV7, "SitePlacement"),
    :schema_element => [
      ["bid", ["Bid", XSD::QName.new(NsV7, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["status", ["SitePlacementStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePlacementStatus,
    :schema_name => XSD::QName.new(NsV7, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => AddSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddSitePlacementsResponse"),
    :schema_element => [
      ["sitePlacementIds", ["ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetSitePlacementsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSitePlacementsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByIdsResponse"),
    :schema_element => [
      ["sitePlacements", ["ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSitePlacementsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetSitePlacementsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetSitePlacementsByAdGroupIdResponse"),
    :schema_element => [
      ["sitePlacements", ["ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["ArrayOflong", XSD::QName.new(NsV7, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdateSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["ArrayOfSitePlacement", XSD::QName.new(NsV7, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetPlacementDetailsForUrlsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetPlacementDetailsForUrlsRequest"),
    :schema_element => [
      ["urls", ["ArrayOfstring", XSD::QName.new(NsV7, "Urls")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetPlacementDetailsForUrlsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetPlacementDetailsForUrlsResponse"),
    :schema_element => [
      ["placementDetails", ["ArrayOfArrayOfPlacementDetail", XSD::QName.new(NsV7, "PlacementDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["ArrayOfPlacementDetail[]", XSD::QName.new(NsV7, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["PlacementDetail[]", XSD::QName.new(NsV7, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PlacementDetail,
    :schema_name => XSD::QName.new(NsV7, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["ImpressionsPerDayRange", XSD::QName.new(NsV7, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["ArrayOfMediaType", XSD::QName.new(NsV7, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ImpressionsPerDayRange,
    :schema_name => XSD::QName.new(NsV7, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMediaType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["MediaType[]", XSD::QName.new(NsV7, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MediaType,
    :schema_name => XSD::QName.new(NsV7, "MediaType"),
    :schema_element => [
      ["dimensions", ["ArrayOfDimension", XSD::QName.new(NsV7, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDimension,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["Dimension[]", XSD::QName.new(NsV7, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Dimension,
    :schema_name => XSD::QName.new(NsV7, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBids", ["ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddBehavioralBidsResponse"),
    :schema_element => [
      ["behavioralBidIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetBehavioralBidsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBehavioralBidsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByIdsResponse"),
    :schema_element => [
      ["behavioralBids", ["ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBehavioralBidsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBehavioralBidsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetBehavioralBidsByAdGroupIdResponse"),
    :schema_element => [
      ["behavioralBids", ["ArrayOfBehavioralBid", XSD::QName.new(NsV7, "BehavioralBids")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeBehavioralBidsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeBehavioralBidsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["behavioralBidIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralBidIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeBehavioralBidsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeBehavioralBidsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaigns", ["ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaign,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["Campaign[]", XSD::QName.new(NsV7, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaign,
    :schema_name => XSD::QName.new(NsV7, "Campaign"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetLimitType,
    :schema_name => XSD::QName.new(NsV7, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => CampaignStatus,
    :schema_name => XSD::QName.new(NsV7, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AddCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddCampaignsResponse"),
    :schema_element => [
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignsByAccountIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByAccountIdRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignsByAccountIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByAccountIdResponse"),
    :schema_element => [
      ["campaigns", ["ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsByIdsResponse"),
    :schema_element => [
      ["campaigns", ["ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdateCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaigns", ["ArrayOfCampaign", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetCampaignsInfoByAccountIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsInfoByAccountIdRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCampaignsInfoByAccountIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetCampaignsInfoByAccountIdResponse"),
    :schema_element => [
      ["campaignsInfo", ["ArrayOfCampaignInfo", XSD::QName.new(NsV7, "CampaignsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignInfo"),
    :schema_element => [
      ["campaignInfo", ["CampaignInfo[]", XSD::QName.new(NsV7, "CampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignInfo,
    :schema_name => XSD::QName.new(NsV7, "CampaignInfo"),
    :schema_element => [
      ["budgetType", ["BudgetLimitType", XSD::QName.new(NsV7, "BudgetType")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ConversionTrackingEnabled")], [0, 1]],
      ["conversionTrackingScript", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ConversionTrackingScript")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["status", ["CampaignStatus", XSD::QName.new(NsV7, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV7, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNegativeKeywordsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByCampaignIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNegativeKeywordsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByCampaignIdsResponse"),
    :schema_element => [
      ["campaignNegativeKeywords", ["ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["CampaignNegativeKeywords[]", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetNegativeKeywordsToCampaignsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AccountId")], [0, 1]],
      ["campaignNegativeKeywords", ["ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV7, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetNegativeKeywordsToCampaignsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "AddAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroups", ["ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroup,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdGroup[]", XSD::QName.new(NsV7, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroup,
    :schema_name => XSD::QName.new(NsV7, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]],
      ["negativeSiteUrls", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeSiteUrls")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BiddingModel,
    :schema_name => XSD::QName.new(NsV7, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => Date,
    :schema_name => XSD::QName.new(NsV7, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupStatus,
    :schema_name => XSD::QName.new(NsV7, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AddAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "AddAdGroupsResponse"),
    :schema_element => [
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetAdGroupsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdGroupsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByIdsResponse"),
    :schema_element => [
      ["adGroups", ["ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdGroupsByCampaignIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByCampaignIdRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdGroupsByCampaignIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsByCampaignIdResponse"),
    :schema_element => [
      ["adGroups", ["ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "PauseAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PauseAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "PauseAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResumeAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "ResumeAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SubmitAdGroupForApprovalRequest,
    :schema_name => XSD::QName.new(NsV7, "SubmitAdGroupForApprovalRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubmitAdGroupForApprovalResponse,
    :schema_name => XSD::QName.new(NsV7, "SubmitAdGroupForApprovalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdateAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroups", ["ArrayOfAdGroup", XSD::QName.new(NsV7, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetAdGroupsInfoByCampaignIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsInfoByCampaignIdRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdGroupsInfoByCampaignIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetAdGroupsInfoByCampaignIdResponse"),
    :schema_element => [
      ["adGroupsInfo", ["ArrayOfAdGroupInfo", XSD::QName.new(NsV7, "AdGroupsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupInfo"),
    :schema_element => [
      ["adGroupInfo", ["AdGroupInfo[]", XSD::QName.new(NsV7, "AdGroupInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupInfo,
    :schema_name => XSD::QName.new(NsV7, "AdGroupInfo"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["biddingModel", ["BiddingModel", XSD::QName.new(NsV7, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["Bid", XSD::QName.new(NsV7, "BroadMatchBid")], [0, 1]],
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["contentMatchBid", ["Bid", XSD::QName.new(NsV7, "ContentMatchBid")], [0, 1]],
      ["endDate", ["Date", XSD::QName.new(NsV7, "EndDate")], [0, 1]],
      ["exactMatchBid", ["Bid", XSD::QName.new(NsV7, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["languageAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["phraseMatchBid", ["Bid", XSD::QName.new(NsV7, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["PricingModel", XSD::QName.new(NsV7, "PricingModel")], [0, 1]],
      ["startDate", ["Date", XSD::QName.new(NsV7, "StartDate")], [0, 1]],
      ["status", ["AdGroupStatus", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNegativeKeywordsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNegativeKeywordsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetNegativeKeywordsByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdGroupNegativeKeywords[]", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV7, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["ArrayOfstring", XSD::QName.new(NsV7, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetNegativeKeywordsToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["adGroupNegativeKeywords", ["ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV7, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetNegativeKeywordsToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV7, "SetNegativeKeywordsToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "AddTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["target", ["Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Target,
    :schema_name => XSD::QName.new(NsV7, "Target"),
    :schema_element => [
      ["age", ["AgeTarget", XSD::QName.new(NsV7, "Age")], [0, 1]],
      ["behavior", ["BehavioralTarget", XSD::QName.new(NsV7, "Behavior")], [0, 1]],
      ["day", ["DayTarget", XSD::QName.new(NsV7, "Day")], [0, 1]],
      ["device", ["DeviceTarget", XSD::QName.new(NsV7, "Device")], [0, 1]],
      ["gender", ["GenderTarget", XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["hour", ["HourTarget", XSD::QName.new(NsV7, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "IsLibraryTarget")], [0, 1]],
      ["location", ["LocationTarget", XSD::QName.new(NsV7, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")], [0, 1]],
      ["segment", ["SegmentTarget", XSD::QName.new(NsV7, "Segment")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeTarget,
    :schema_name => XSD::QName.new(NsV7, "AgeTarget"),
    :schema_element => [
      ["bids", ["ArrayOfAgeTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAgeTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AgeTargetBid[]", XSD::QName.new(NsV7, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeTargetBid,
    :schema_name => XSD::QName.new(NsV7, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AgeRange", XSD::QName.new(NsV7, "Age")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeRange,
    :schema_name => XSD::QName.new(NsV7, "AgeRange")
  )

  LiteralRegistry.register(
    :class => IncrementalBidPercentage,
    :schema_name => XSD::QName.new(NsV7, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => BehavioralTarget,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBehavioralTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetBid"),
    :schema_element => [
      ["behavioralTargetBid", ["BehavioralTargetBid[]", XSD::QName.new(NsV7, "BehavioralTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetBid,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetBid"),
    :schema_element => [
      ["behavioralName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "BehavioralName")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => DayTarget,
    :schema_name => XSD::QName.new(NsV7, "DayTarget"),
    :schema_element => [
      ["bids", ["ArrayOfDayTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDayTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["DayTargetBid[]", XSD::QName.new(NsV7, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DayTargetBid,
    :schema_name => XSD::QName.new(NsV7, "DayTargetBid"),
    :schema_element => [
      ["day", ["Day", XSD::QName.new(NsV7, "Day")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeviceTarget,
    :schema_name => XSD::QName.new(NsV7, "DeviceTarget"),
    :schema_element => [
      ["devices", ["ArrayOfDeviceType", XSD::QName.new(NsV7, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDeviceType,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["DeviceType[]", XSD::QName.new(NsV7, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeviceType,
    :schema_name => XSD::QName.new(NsV7, "DeviceType")
  )

  LiteralRegistry.register(
    :class => GenderTarget,
    :schema_name => XSD::QName.new(NsV7, "GenderTarget"),
    :schema_element => [
      ["bids", ["ArrayOfGenderTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfGenderTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["GenderTargetBid[]", XSD::QName.new(NsV7, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GenderTargetBid,
    :schema_name => XSD::QName.new(NsV7, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["GenderType", XSD::QName.new(NsV7, "Gender")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => GenderType,
    :schema_name => XSD::QName.new(NsV7, "GenderType")
  )

  LiteralRegistry.register(
    :class => HourTarget,
    :schema_name => XSD::QName.new(NsV7, "HourTarget"),
    :schema_element => [
      ["bids", ["ArrayOfHourTargetBid", XSD::QName.new(NsV7, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfHourTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["HourTargetBid[]", XSD::QName.new(NsV7, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => HourTargetBid,
    :schema_name => XSD::QName.new(NsV7, "HourTargetBid"),
    :schema_element => [
      ["hour", ["HourRange", XSD::QName.new(NsV7, "Hour")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => HourRange,
    :schema_name => XSD::QName.new(NsV7, "HourRange")
  )

  LiteralRegistry.register(
    :class => LocationTarget,
    :schema_name => XSD::QName.new(NsV7, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["BusinessTarget", XSD::QName.new(NsV7, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["CityTarget", XSD::QName.new(NsV7, "CityTarget")], [0, 1]],
      ["countryTarget", ["CountryTarget", XSD::QName.new(NsV7, "CountryTarget")], [0, 1]],
      ["metroAreaTarget", ["MetroAreaTarget", XSD::QName.new(NsV7, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["RadiusTarget", XSD::QName.new(NsV7, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["StateTarget", XSD::QName.new(NsV7, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessTarget,
    :schema_name => XSD::QName.new(NsV7, "BusinessTarget"),
    :schema_element => [
      ["bids", ["ArrayOfBusinessTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBusinessTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["BusinessTargetBid[]", XSD::QName.new(NsV7, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessTargetBid,
    :schema_name => XSD::QName.new(NsV7, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "BusinessId")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => CityTarget,
    :schema_name => XSD::QName.new(NsV7, "CityTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCityTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCityTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["CityTargetBid[]", XSD::QName.new(NsV7, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CityTargetBid,
    :schema_name => XSD::QName.new(NsV7, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV7, "City")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => CountryTarget,
    :schema_name => XSD::QName.new(NsV7, "CountryTarget"),
    :schema_element => [
      ["bids", ["ArrayOfCountryTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCountryTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["CountryTargetBid[]", XSD::QName.new(NsV7, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CountryTargetBid,
    :schema_name => XSD::QName.new(NsV7, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV7, "CountryAndRegion")]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaTarget,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["MetroAreaTargetBid[]", XSD::QName.new(NsV7, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV7, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => RadiusTarget,
    :schema_name => XSD::QName.new(NsV7, "RadiusTarget"),
    :schema_element => [
      ["bids", ["ArrayOfRadiusTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfRadiusTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["RadiusTargetBid[]", XSD::QName.new(NsV7, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RadiusTargetBid,
    :schema_name => XSD::QName.new(NsV7, "RadiusTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV7, "LongitudeDegrees")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV7, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => StateTarget,
    :schema_name => XSD::QName.new(NsV7, "StateTarget"),
    :schema_element => [
      ["bids", ["ArrayOfStateTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfStateTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["StateTargetBid[]", XSD::QName.new(NsV7, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => StateTargetBid,
    :schema_name => XSD::QName.new(NsV7, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV7, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentTarget,
    :schema_name => XSD::QName.new(NsV7, "SegmentTarget"),
    :schema_element => [
      ["bids", ["ArrayOfSegmentTargetBid", XSD::QName.new(NsV7, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegmentTargetBid,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegmentTargetBid"),
    :schema_element => [
      ["segmentTargetBid", ["SegmentTargetBid[]", XSD::QName.new(NsV7, "SegmentTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentTargetBid,
    :schema_name => XSD::QName.new(NsV7, "SegmentTargetBid"),
    :schema_element => [
      ["cashBackInfo", ["CashBackInfo", XSD::QName.new(NsV7, "CashBackInfo")], [0, 1]],
      ["incrementalBid", ["IncrementalBidPercentage", XSD::QName.new(NsV7, "IncrementalBid")]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Param3")], [0, 1]],
      ["segmentId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "SegmentId")]],
      ["segmentParam1", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam1")], [0, 1]],
      ["segmentParam2", ["SOAP::SOAPString", XSD::QName.new(NsV7, "SegmentParam2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "AddTargetResponse"),
    :schema_element => [
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetTargetByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTargetByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetByAdGroupIdResponse"),
    :schema_element => [
      ["target", ["Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateTargetRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["target", ["Target", XSD::QName.new(NsV7, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateTargetResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddTargetsToLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "AddTargetsToLibraryRequest"),
    :schema_element => [
      ["targets", ["ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTarget,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["Target[]", XSD::QName.new(NsV7, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddTargetsToLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "AddTargetsToLibraryResponse"),
    :schema_element => [
      ["targetIds", ["ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateTargetsInLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetsInLibraryRequest"),
    :schema_element => [
      ["targets", ["ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateTargetsInLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "UpdateTargetsInLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteTargetsFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetsFromLibraryRequest"),
    :schema_element => [
      ["targetIds", ["ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTargetsFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetsFromLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetTargetsInfoFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsInfoFromLibraryRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetTargetsInfoFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsInfoFromLibraryResponse"),
    :schema_element => [
      ["targetsInfo", ["ArrayOfTargetInfo", XSD::QName.new(NsV7, "TargetsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTargetInfo,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["TargetInfo[]", XSD::QName.new(NsV7, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TargetInfo,
    :schema_name => XSD::QName.new(NsV7, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV7, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTargetsByIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByIdsRequest"),
    :schema_element => [
      ["targetIds", ["ArrayOflong", XSD::QName.new(NsV7, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTargetsByIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByIdsResponse"),
    :schema_element => [
      ["targets", ["ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTargetToAdGroupRequest,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTargetToAdGroupResponse,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteTargetFromAdGroupRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTargetFromAdGroupResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetTargetsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByAdGroupIdsRequest"),
    :schema_element => [
      ["adGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTargetsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByAdGroupIdsResponse"),
    :schema_element => [
      ["targets", ["ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTargetToCampaignRequest,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTargetToCampaignResponse,
    :schema_name => XSD::QName.new(NsV7, "SetTargetToCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteTargetFromCampaignRequest,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteTargetFromCampaignResponse,
    :schema_name => XSD::QName.new(NsV7, "DeleteTargetFromCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetTargetsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByCampaignIdsRequest"),
    :schema_element => [
      ["campaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTargetsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV7, "GetTargetsByCampaignIdsResponse"),
    :schema_element => [
      ["targets", ["ArrayOfTarget", XSD::QName.new(NsV7, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationFault,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfbase64Binary,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfbase64Binary"),
    :schema_element => [
      ["base64Binary", "SOAP::SOAPBase64[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdComponent,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupNetwork,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAdGroupNetwork"),
    :schema_element => [
      ["adGroupNetwork", ["AdGroupNetwork[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupNetwork,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupNetwork"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdGroupId")], [0, 1]],
      ["network", ["Network", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Network")], [0, 1]]
    ]
  )

end
