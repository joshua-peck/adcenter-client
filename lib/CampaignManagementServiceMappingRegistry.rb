require 'adcenter_wrapper_entities'
require 'CampaignManagementService.rb'
require 'soap/mapping'

module AdCenterWrapper

module CampaignManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.CampaignManagement.Api.DataContracts"
  NsV8 = "https://adcenter.microsoft.com/v8"

  EncodedRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_type => XSD::QName.new(NsV8, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_type => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_type => XSD::QName.new(NsV8, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV8, "Ad")], [0, nil]]
    ]
  )

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
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV8, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV8, "EditorialError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_type => XSD::QName.new(NsV8, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]],
      ["publisherCountry", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PublisherCountry")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV8, "Keyword")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_type => XSD::QName.new(NsV8, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_type => XSD::QName.new(NsV8, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "Amount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV8, "Business")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_type => XSD::QName.new(NsV8, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV8, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV8, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV8, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV8, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV8, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV8, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV8, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV8, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV8, "HoursOfOperation")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_type => XSD::QName.new(NsV8, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_type => XSD::QName.new(NsV8, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "End")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV8, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Minute")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV8, "PaymentType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV8, "BusinessInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_type => XSD::QName.new(NsV8, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV8, "SitePlacement")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_type => XSD::QName.new(NsV8, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV8, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV8, "PlacementDetail")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV8, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV8, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV8, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Minimum")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV8, "MediaType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_type => XSD::QName.new(NsV8, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV8, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV8, "Dimension")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_type => XSD::QName.new(NsV8, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Width")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV8, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV8, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV8, "Reasons")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV8, "EditorialReason")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_type => XSD::QName.new(NsV8, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Term")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignScope,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignScope"),
    :schema_element => [
      ["campaignScope", ["AdCenterWrapper::CampaignScope[]", XSD::QName.new(NsV8, "CampaignScope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignScope,
    :schema_type => XSD::QName.new(NsV8, "CampaignScope"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "ParentAccountId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AnalyticsApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "AnalyticsApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["goalErrors", ["AdCenterWrapper::ArrayOfGoalError", XSD::QName.new(NsV8, "GoalErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdExtension,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdExtension"),
    :schema_element => [
      ["adExtension", ["AdCenterWrapper::AdExtension[]", XSD::QName.new(NsV8, "AdExtension")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdExtension,
    :schema_type => XSD::QName.new(NsV8, "AdExtension"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")]],
      ["enableLocationExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableLocationExtension")], [0, 1]],
      ["phoneExtension", ["AdCenterWrapper::PhoneExtension", XSD::QName.new(NsV8, "PhoneExtension")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PhoneExtension,
    :schema_type => XSD::QName.new(NsV8, "PhoneExtension"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["enableClickToCallOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableClickToCallOnly")], [0, 1]],
      ["enablePhoneExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnablePhoneExtension")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV8, "Campaign")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_type => XSD::QName.new(NsV8, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV8, "BudgetType")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "ConversionTrackingEnabled")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV8, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeSites"),
    :schema_element => [
      ["campaignNegativeSites", ["AdCenterWrapper::CampaignNegativeSites[]", XSD::QName.new(NsV8, "CampaignNegativeSites")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "CampaignNegativeSites"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV8, "AdGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_type => XSD::QName.new(NsV8, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV8, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV8, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsV8, "Network")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV8, "PricingModel")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfPublisherCountry", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV8, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_type => XSD::QName.new(NsV8, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Year")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherCountry,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPublisherCountry"),
    :schema_element => [
      ["publisherCountry", ["AdCenterWrapper::PublisherCountry[]", XSD::QName.new(NsV8, "PublisherCountry")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PublisherCountry,
    :schema_type => XSD::QName.new(NsV8, "PublisherCountry"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["isOptedIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOptedIn")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV8, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeSites"),
    :schema_element => [
      ["adGroupNegativeSites", ["AdCenterWrapper::AdGroupNegativeSites[]", XSD::QName.new(NsV8, "AdGroupNegativeSites")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "AdGroupNegativeSites"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_type => XSD::QName.new(NsV8, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV8, "Age")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV8, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV8, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_type => XSD::QName.new(NsV8, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV8, "AgeTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_type => XSD::QName.new(NsV8, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV8, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_type => XSD::QName.new(NsV8, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllDays")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV8, "DayTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_type => XSD::QName.new(NsV8, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_type => XSD::QName.new(NsV8, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV8, "Devices")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV8, "DeviceType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_type => XSD::QName.new(NsV8, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV8, "GenderTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_type => XSD::QName.new(NsV8, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV8, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_type => XSD::QName.new(NsV8, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllHours")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV8, "HourTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_type => XSD::QName.new(NsV8, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV8, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_type => XSD::QName.new(NsV8, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV8, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV8, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV8, "CountryTarget")], [0, 1]],
      ["hasPhysicalIntent", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "HasPhysicalIntent")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV8, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV8, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV8, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllLocations")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_type => XSD::QName.new(NsV8, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV8, "BusinessTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV8, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_type => XSD::QName.new(NsV8, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV8, "CityTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_type => XSD::QName.new(NsV8, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_type => XSD::QName.new(NsV8, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV8, "CountryTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_type => XSD::QName.new(NsV8, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV8, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV8, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV8, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV8, "MetroArea")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_type => XSD::QName.new(NsV8, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV8, "RadiusTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV8, "RadiusTargetBid"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_type => XSD::QName.new(NsV8, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV8, "StateTargetBid")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_type => XSD::QName.new(NsV8, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV8, "State")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV8, "Target")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetAssociation,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTargetAssociation"),
    :schema_element => [
      ["targetAssociation", ["AdCenterWrapper::TargetAssociation[]", XSD::QName.new(NsV8, "TargetAssociation")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TargetAssociation,
    :schema_type => XSD::QName.new(NsV8, "TargetAssociation"),
    :schema_element => [
      ["deviceOSTarget", ["AdCenterWrapper::DeviceOSTarget", XSD::QName.new(NsV8, "DeviceOSTarget")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceOSTarget,
    :schema_type => XSD::QName.new(NsV8, "DeviceOSTarget"),
    :schema_element => [
      ["deviceOSList", ["AdCenterWrapper::ArrayOfDeviceOS", XSD::QName.new(NsV8, "DeviceOSList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceOS,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDeviceOS"),
    :schema_element => [
      ["deviceOS", ["AdCenterWrapper::DeviceOS[]", XSD::QName.new(NsV8, "DeviceOS")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceOS,
    :schema_type => XSD::QName.new(NsV8, "DeviceOS"),
    :schema_element => [
      ["deviceName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DeviceName")], [0, 1]],
      ["oSName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OSName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV8, "TargetInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_type => XSD::QName.new(NsV8, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
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
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoal,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoal"),
    :schema_element => [
      ["goal", ["AdCenterWrapper::Goal[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Goal,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal"),
    :schema_element => [
      ["costModel", [nil, XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CostModel")], [0, 1]],
      ["daysApplicableForConversion", ["AdCenterWrapper::DaysApplicableForConversion", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["revenueModel", ["AdCenterWrapper::RevenueModel", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel")], [0, 1]],
      ["steps", ["AdCenterWrapper::ArrayOfStep", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Steps")], [0, 1]],
      ["yEventId", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "YEventId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RevenueModel,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel"),
    :schema_element => [
      ["constantRevenueValue", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConstantRevenueValue")], [0, 1]],
      ["type", ["AdCenterWrapper::RevenueModelType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfStep,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfStep"),
    :schema_element => [
      ["step", ["AdCenterWrapper::Step[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Step,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["positionNumber", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "PositionNumber")], [0, 1]],
      ["script", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Script")], [0, 1]],
      ["type", ["AdCenterWrapper::StepType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalResult,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalResult"),
    :schema_element => [
      ["goalResult", ["AdCenterWrapper::GoalResult[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GoalResult,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult"),
    :schema_element => [
      ["goalId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalId")], [0, 1]],
      ["stepIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalError,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalError"),
    :schema_element => [
      ["goalError", ["AdCenterWrapper::GoalError[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GoalError,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError"),
    :schema_element => [
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BatchErrors")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Index")], [0, 1]],
      ["stepErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAccountAnalyticsType"),
    :schema_element => [
      ["accountAnalyticsType", ["AdCenterWrapper::AccountAnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountId")], [0, 1]],
      ["type", ["AdCenterWrapper::AnalyticsType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAnalyticsType"),
    :schema_element => [
      ["analyticsType", ["AdCenterWrapper::AnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV8, "AdEditorialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_type => XSD::QName.new(NsV8, "AdStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_type => XSD::QName.new(NsV8, "AdType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV8, "KeywordEditorialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_type => XSD::QName.new(NsV8, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV8, "StandardBusinessIcon")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV8, "BusinessGeoCodeStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_type => XSD::QName.new(NsV8, "Day")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_type => XSD::QName.new(NsV8, "PaymentType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_type => XSD::QName.new(NsV8, "BusinessStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV8, "SitePlacementStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsV8, "BudgetLimitType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_type => XSD::QName.new(NsV8, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_type => XSD::QName.new(NsV8, "BiddingModel")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_type => XSD::QName.new(NsV8, "Network")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_type => XSD::QName.new(NsV8, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV8, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_type => XSD::QName.new(NsV8, "AgeRange")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV8, "IncrementalBidPercentage")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_type => XSD::QName.new(NsV8, "DeviceType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_type => XSD::QName.new(NsV8, "GenderType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_type => XSD::QName.new(NsV8, "HourRange")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DaysApplicableForConversion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::RevenueModelType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModelType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::StepType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_type => XSD::QName.new(NsV8, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_type => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_type => XSD::QName.new(NsV8, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV8, "Ad")], [0, nil]]
    ]
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
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "EditorialApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV8, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV8, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_type => XSD::QName.new(NsV8, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]],
      ["publisherCountry", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PublisherCountry")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV8, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_type => XSD::QName.new(NsV8, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_type => XSD::QName.new(NsV8, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV8, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_type => XSD::QName.new(NsV8, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV8, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV8, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV8, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV8, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV8, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV8, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_type => XSD::QName.new(NsV8, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV8, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV8, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_type => XSD::QName.new(NsV8, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_type => XSD::QName.new(NsV8, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_type => XSD::QName.new(NsV8, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV8, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV8, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_type => XSD::QName.new(NsV8, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV8, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_type => XSD::QName.new(NsV8, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV8, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV8, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_type => XSD::QName.new(NsV8, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV8, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV8, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_type => XSD::QName.new(NsV8, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV8, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_type => XSD::QName.new(NsV8, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV8, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV8, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_type => XSD::QName.new(NsV8, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV8, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_type => XSD::QName.new(NsV8, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV8, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV8, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_type => XSD::QName.new(NsV8, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignScope,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignScope"),
    :schema_element => [
      ["campaignScope", ["AdCenterWrapper::CampaignScope[]", XSD::QName.new(NsV8, "CampaignScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignScope,
    :schema_type => XSD::QName.new(NsV8, "CampaignScope"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "ParentAccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AnalyticsApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "AnalyticsApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["goalErrors", ["AdCenterWrapper::ArrayOfGoalError", XSD::QName.new(NsV8, "GoalErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdExtension,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdExtension"),
    :schema_element => [
      ["adExtension", ["AdCenterWrapper::AdExtension[]", XSD::QName.new(NsV8, "AdExtension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdExtension,
    :schema_type => XSD::QName.new(NsV8, "AdExtension"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")]],
      ["enableLocationExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableLocationExtension")], [0, 1]],
      ["phoneExtension", ["AdCenterWrapper::PhoneExtension", XSD::QName.new(NsV8, "PhoneExtension")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PhoneExtension,
    :schema_type => XSD::QName.new(NsV8, "PhoneExtension"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["enableClickToCallOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableClickToCallOnly")], [0, 1]],
      ["enablePhoneExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnablePhoneExtension")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV8, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_type => XSD::QName.new(NsV8, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV8, "BudgetType")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "ConversionTrackingEnabled")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV8, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeSites"),
    :schema_element => [
      ["campaignNegativeSites", ["AdCenterWrapper::CampaignNegativeSites[]", XSD::QName.new(NsV8, "CampaignNegativeSites")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "CampaignNegativeSites"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV8, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_type => XSD::QName.new(NsV8, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV8, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV8, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsV8, "Network")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV8, "PricingModel")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfPublisherCountry", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV8, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_type => XSD::QName.new(NsV8, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherCountry,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfPublisherCountry"),
    :schema_element => [
      ["publisherCountry", ["AdCenterWrapper::PublisherCountry[]", XSD::QName.new(NsV8, "PublisherCountry")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherCountry,
    :schema_type => XSD::QName.new(NsV8, "PublisherCountry"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["isOptedIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOptedIn")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV8, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_type => XSD::QName.new(NsV8, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeSites"),
    :schema_element => [
      ["adGroupNegativeSites", ["AdCenterWrapper::AdGroupNegativeSites[]", XSD::QName.new(NsV8, "AdGroupNegativeSites")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeSites,
    :schema_type => XSD::QName.new(NsV8, "AdGroupNegativeSites"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_type => XSD::QName.new(NsV8, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV8, "Age")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV8, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV8, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_type => XSD::QName.new(NsV8, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV8, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_type => XSD::QName.new(NsV8, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV8, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_type => XSD::QName.new(NsV8, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV8, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_type => XSD::QName.new(NsV8, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_type => XSD::QName.new(NsV8, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV8, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV8, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_type => XSD::QName.new(NsV8, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV8, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_type => XSD::QName.new(NsV8, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV8, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_type => XSD::QName.new(NsV8, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV8, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_type => XSD::QName.new(NsV8, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV8, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_type => XSD::QName.new(NsV8, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV8, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV8, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV8, "CountryTarget")], [0, 1]],
      ["hasPhysicalIntent", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "HasPhysicalIntent")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV8, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV8, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV8, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_type => XSD::QName.new(NsV8, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV8, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_type => XSD::QName.new(NsV8, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_type => XSD::QName.new(NsV8, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV8, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_type => XSD::QName.new(NsV8, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_type => XSD::QName.new(NsV8, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV8, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_type => XSD::QName.new(NsV8, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_type => XSD::QName.new(NsV8, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV8, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_type => XSD::QName.new(NsV8, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV8, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_type => XSD::QName.new(NsV8, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV8, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_type => XSD::QName.new(NsV8, "RadiusTargetBid"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_type => XSD::QName.new(NsV8, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV8, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_type => XSD::QName.new(NsV8, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV8, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV8, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetAssociation,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTargetAssociation"),
    :schema_element => [
      ["targetAssociation", ["AdCenterWrapper::TargetAssociation[]", XSD::QName.new(NsV8, "TargetAssociation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetAssociation,
    :schema_type => XSD::QName.new(NsV8, "TargetAssociation"),
    :schema_element => [
      ["deviceOSTarget", ["AdCenterWrapper::DeviceOSTarget", XSD::QName.new(NsV8, "DeviceOSTarget")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceOSTarget,
    :schema_type => XSD::QName.new(NsV8, "DeviceOSTarget"),
    :schema_element => [
      ["deviceOSList", ["AdCenterWrapper::ArrayOfDeviceOS", XSD::QName.new(NsV8, "DeviceOSList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceOS,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfDeviceOS"),
    :schema_element => [
      ["deviceOS", ["AdCenterWrapper::DeviceOS[]", XSD::QName.new(NsV8, "DeviceOS")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceOS,
    :schema_type => XSD::QName.new(NsV8, "DeviceOS"),
    :schema_element => [
      ["deviceName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DeviceName")], [0, 1]],
      ["oSName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OSName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV8, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_type => XSD::QName.new(NsV8, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
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
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoal,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoal"),
    :schema_element => [
      ["goal", ["AdCenterWrapper::Goal[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Goal,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal"),
    :schema_element => [
      ["costModel", [nil, XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CostModel")], [0, 1]],
      ["daysApplicableForConversion", ["AdCenterWrapper::DaysApplicableForConversion", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["revenueModel", ["AdCenterWrapper::RevenueModel", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel")], [0, 1]],
      ["steps", ["AdCenterWrapper::ArrayOfStep", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Steps")], [0, 1]],
      ["yEventId", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "YEventId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RevenueModel,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel"),
    :schema_element => [
      ["constantRevenueValue", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConstantRevenueValue")], [0, 1]],
      ["type", ["AdCenterWrapper::RevenueModelType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStep,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfStep"),
    :schema_element => [
      ["step", ["AdCenterWrapper::Step[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Step,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["positionNumber", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "PositionNumber")], [0, 1]],
      ["script", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Script")], [0, 1]],
      ["type", ["AdCenterWrapper::StepType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalResult,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalResult"),
    :schema_element => [
      ["goalResult", ["AdCenterWrapper::GoalResult[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalResult,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult"),
    :schema_element => [
      ["goalId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalId")], [0, 1]],
      ["stepIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalError,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalError"),
    :schema_element => [
      ["goalError", ["AdCenterWrapper::GoalError[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalError,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError"),
    :schema_element => [
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BatchErrors")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Index")], [0, 1]],
      ["stepErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAccountAnalyticsType"),
    :schema_element => [
      ["accountAnalyticsType", ["AdCenterWrapper::AccountAnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountId")], [0, 1]],
      ["type", ["AdCenterWrapper::AnalyticsType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAnalyticsType"),
    :schema_element => [
      ["analyticsType", ["AdCenterWrapper::AnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_type => XSD::QName.new(NsV8, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_type => XSD::QName.new(NsV8, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_type => XSD::QName.new(NsV8, "AdType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_type => XSD::QName.new(NsV8, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_type => XSD::QName.new(NsV8, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_type => XSD::QName.new(NsV8, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_type => XSD::QName.new(NsV8, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_type => XSD::QName.new(NsV8, "Day")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_type => XSD::QName.new(NsV8, "PaymentType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_type => XSD::QName.new(NsV8, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_type => XSD::QName.new(NsV8, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsV8, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_type => XSD::QName.new(NsV8, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_type => XSD::QName.new(NsV8, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_type => XSD::QName.new(NsV8, "Network")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_type => XSD::QName.new(NsV8, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV8, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_type => XSD::QName.new(NsV8, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_type => XSD::QName.new(NsV8, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_type => XSD::QName.new(NsV8, "DeviceType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_type => XSD::QName.new(NsV8, "GenderType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_type => XSD::QName.new(NsV8, "HourRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdComponent,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AdComponent")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DaysApplicableForConversion,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RevenueModelType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModelType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StepType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AnalyticsType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MobileAd,
    :schema_name => XSD::QName.new(NsV8, "MobileAd"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["businessName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "BusinessName")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")], [0, 1]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PhoneNumber")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Ad,
    :schema_name => XSD::QName.new(NsV8, "Ad"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdEditorialStatus,
    :schema_name => XSD::QName.new(NsV8, "AdEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdStatus,
    :schema_name => XSD::QName.new(NsV8, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdType,
    :schema_name => XSD::QName.new(NsV8, "AdType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TextAd,
    :schema_name => XSD::QName.new(NsV8, "TextAd"),
    :schema_element => [
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["status", ["AdCenterWrapper::AdStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["type", ["AdCenterWrapper::AdType", XSD::QName.new(NsV8, "Type")], [0, 1]],
      ["destinationUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DestinationUrl")], [0, 1]],
      ["displayUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisplayUrl")]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Title")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::AdEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByEditorialStatusResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV8, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAd,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAd"),
    :schema_element => [
      ["ad", ["AdCenterWrapper::Ad[]", XSD::QName.new(NsV8, "Ad")], [0, nil]]
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
    :class => AdCenterWrapper::GetAdsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByIdsResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV8, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdsByAdGroupIdResponse"),
    :schema_element => [
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV8, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV8, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialApiFaultDetail,
    :schema_name => XSD::QName.new(NsV8, "EditorialApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["editorialErrors", ["AdCenterWrapper::ArrayOfEditorialError", XSD::QName.new(NsV8, "EditorialErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialError,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfEditorialError"),
    :schema_element => [
      ["editorialError", ["AdCenterWrapper::EditorialError[]", XSD::QName.new(NsV8, "EditorialError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialError,
    :schema_name => XSD::QName.new(NsV8, "EditorialError"),
    :schema_element => [
      ["appealable", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "Appealable")], [0, 1]],
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["disapprovedText", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DisapprovedText")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]],
      ["publisherCountry", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PublisherCountry")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdsRequest,
    :schema_name => XSD::QName.new(NsV8, "PauseAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdsResponse,
    :schema_name => XSD::QName.new(NsV8, "PauseAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdsRequest,
    :schema_name => XSD::QName.new(NsV8, "ResumeAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdsResponse,
    :schema_name => XSD::QName.new(NsV8, "ResumeAdsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeyword,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfKeyword"),
    :schema_element => [
      ["keyword", ["AdCenterWrapper::Keyword[]", XSD::QName.new(NsV8, "Keyword")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Keyword,
    :schema_name => XSD::QName.new(NsV8, "Keyword"),
    :schema_element => [
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]],
      ["param1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param1")], [0, 1]],
      ["param2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param2")], [0, 1]],
      ["param3", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Param3")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["status", ["AdCenterWrapper::KeywordStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["text", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Text")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Bid,
    :schema_name => XSD::QName.new(NsV8, "Bid"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "Amount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordEditorialStatus,
    :schema_name => XSD::QName.new(NsV8, "KeywordEditorialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordStatus,
    :schema_name => XSD::QName.new(NsV8, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddKeywordsResponse"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByEditorialStatusRequest,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByEditorialStatusRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["editorialStatus", ["AdCenterWrapper::KeywordEditorialStatus", XSD::QName.new(NsV8, "EditorialStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByEditorialStatusResponse,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByEditorialStatusResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByIdsResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordsByAdGroupIdResponse"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "PauseKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "PauseKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "ResumeKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "ResumeKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateKeywordsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateKeywordsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfKeyword", XSD::QName.new(NsV8, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateKeywordsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateKeywordsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBusinessesRequest,
    :schema_name => XSD::QName.new(NsV8, "AddBusinessesRequest"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV8, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusiness,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfBusiness"),
    :schema_element => [
      ["business", ["AdCenterWrapper::Business[]", XSD::QName.new(NsV8, "Business")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Business,
    :schema_name => XSD::QName.new(NsV8, "Business"),
    :schema_element => [
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine1")], [0, 1]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(NsV8, "AddressLine2")], [0, 1]],
      ["businessImageIcon", ["AdCenterWrapper::BusinessImageIcon", XSD::QName.new(NsV8, "BusinessImageIcon")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")], [0, 1]],
      ["countryOrRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryOrRegion")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Email")], [0, 1]],
      ["geoCodeStatus", ["AdCenterWrapper::BusinessGeoCodeStatus", XSD::QName.new(NsV8, "GeoCodeStatus")], [0, 1]],
      ["hrsOfOperation", ["AdCenterWrapper::ArrayOfHoursOfOperation", XSD::QName.new(NsV8, "HrsOfOperation")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isOpen24Hours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOpen24Hours")], [0, 1]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")], [0, 1]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]],
      ["otherPaymentTypeDesc", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OtherPaymentTypeDesc")], [0, 1]],
      ["payment", ["AdCenterWrapper::ArrayOfPaymentType", XSD::QName.new(NsV8, "Payment")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsV8, "StateOrProvince")], [0, 1]],
      ["status", ["AdCenterWrapper::BusinessStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["uRL", ["SOAP::SOAPString", XSD::QName.new(NsV8, "URL")], [0, 1]],
      ["zipOrPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ZipOrPostalCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessImageIcon,
    :schema_name => XSD::QName.new(NsV8, "BusinessImageIcon"),
    :schema_element => [
      ["customIconAssetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CustomIconAssetId")], [0, 1]],
      ["standardBusinessIcon", ["AdCenterWrapper::StandardBusinessIcon", XSD::QName.new(NsV8, "StandardBusinessIcon")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StandardBusinessIcon,
    :schema_name => XSD::QName.new(NsV8, "StandardBusinessIcon")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessGeoCodeStatus,
    :schema_name => XSD::QName.new(NsV8, "BusinessGeoCodeStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHoursOfOperation,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfHoursOfOperation"),
    :schema_element => [
      ["hoursOfOperation", ["AdCenterWrapper::HoursOfOperation[]", XSD::QName.new(NsV8, "HoursOfOperation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HoursOfOperation,
    :schema_name => XSD::QName.new(NsV8, "HoursOfOperation"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["openTime1", "AdCenterWrapper::DayTimeInterval", [0, 1]],
      ["openTime2", "AdCenterWrapper::DayTimeInterval", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Day,
    :schema_name => XSD::QName.new(NsV8, "Day")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTimeInterval,
    :schema_name => XSD::QName.new(NsV8, "DayTimeInterval"),
    :schema_element => [
      ["v_begin", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "Begin")], [0, 1]],
      ["v_end", ["AdCenterWrapper::TimeOfTheDay", XSD::QName.new(NsV8, "End")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeOfTheDay,
    :schema_name => XSD::QName.new(NsV8, "TimeOfTheDay"),
    :schema_element => [
      ["hour", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["minute", ["SOAP::SOAPShort", XSD::QName.new(NsV8, "Minute")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPaymentType,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfPaymentType"),
    :schema_element => [
      ["paymentType", ["AdCenterWrapper::PaymentType[]", XSD::QName.new(NsV8, "PaymentType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentType,
    :schema_name => XSD::QName.new(NsV8, "PaymentType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessStatus,
    :schema_name => XSD::QName.new(NsV8, "BusinessStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddBusinessesResponse,
    :schema_name => XSD::QName.new(NsV8, "AddBusinessesResponse"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBusinessesRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateBusinessesRequest"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV8, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateBusinessesResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBusinessesRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteBusinessesRequest"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteBusinessesResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteBusinessesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesInfoRequest,
    :schema_name => XSD::QName.new(NsV8, "GetBusinessesInfoRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesInfoResponse,
    :schema_name => XSD::QName.new(NsV8, "GetBusinessesInfoResponse"),
    :schema_element => [
      ["businessesInfo", ["AdCenterWrapper::ArrayOfBusinessInfo", XSD::QName.new(NsV8, "BusinessesInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessInfo,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfBusinessInfo"),
    :schema_element => [
      ["businessInfo", ["AdCenterWrapper::BusinessInfo[]", XSD::QName.new(NsV8, "BusinessInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessInfo,
    :schema_name => XSD::QName.new(NsV8, "BusinessInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetBusinessesByIdsRequest"),
    :schema_element => [
      ["businessIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "BusinessIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBusinessesByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetBusinessesByIdsResponse"),
    :schema_element => [
      ["businesses", ["AdCenterWrapper::ArrayOfBusiness", XSD::QName.new(NsV8, "Businesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV8, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePlacement,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfSitePlacement"),
    :schema_element => [
      ["sitePlacement", ["AdCenterWrapper::SitePlacement[]", XSD::QName.new(NsV8, "SitePlacement")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacement,
    :schema_name => XSD::QName.new(NsV8, "SitePlacement"),
    :schema_element => [
      ["bid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "Bid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["status", ["AdCenterWrapper::SitePlacementStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePlacementStatus,
    :schema_name => XSD::QName.new(NsV8, "SitePlacementStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddSitePlacementsResponse"),
    :schema_element => [
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetSitePlacementsByIdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetSitePlacementsByIdsResponse"),
    :schema_element => [
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV8, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetSitePlacementsByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetSitePlacementsByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetSitePlacementsByAdGroupIdResponse"),
    :schema_element => [
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV8, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV8, "PauseSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV8, "PauseSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV8, "ResumeSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacementIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "SitePlacementIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV8, "ResumeSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateSitePlacementsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateSitePlacementsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["sitePlacements", ["AdCenterWrapper::ArrayOfSitePlacement", XSD::QName.new(NsV8, "SitePlacements")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateSitePlacementsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateSitePlacementsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPlacementDetailsForUrlsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetPlacementDetailsForUrlsRequest"),
    :schema_element => [
      ["urls", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Urls")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPlacementDetailsForUrlsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetPlacementDetailsForUrlsResponse"),
    :schema_element => [
      ["placementDetails", ["AdCenterWrapper::ArrayOfArrayOfPlacementDetail", XSD::QName.new(NsV8, "PlacementDetails")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfArrayOfPlacementDetail"),
    :schema_element => [
      ["arrayOfPlacementDetail", ["AdCenterWrapper::ArrayOfPlacementDetail[]", XSD::QName.new(NsV8, "ArrayOfPlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPlacementDetail,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfPlacementDetail"),
    :schema_element => [
      ["placementDetail", ["AdCenterWrapper::PlacementDetail[]", XSD::QName.new(NsV8, "PlacementDetail")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PlacementDetail,
    :schema_name => XSD::QName.new(NsV8, "PlacementDetail"),
    :schema_element => [
      ["impressionsRangePerDay", ["AdCenterWrapper::ImpressionsPerDayRange", XSD::QName.new(NsV8, "ImpressionsRangePerDay")], [0, 1]],
      ["pathName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "PathName")], [0, 1]],
      ["placementId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "PlacementId")], [0, 1]],
      ["supportedMediaTypes", ["AdCenterWrapper::ArrayOfMediaType", XSD::QName.new(NsV8, "SupportedMediaTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ImpressionsPerDayRange,
    :schema_name => XSD::QName.new(NsV8, "ImpressionsPerDayRange"),
    :schema_element => [
      ["maximum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Maximum")], [0, 1]],
      ["minimum", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Minimum")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMediaType,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfMediaType"),
    :schema_element => [
      ["mediaType", ["AdCenterWrapper::MediaType[]", XSD::QName.new(NsV8, "MediaType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MediaType,
    :schema_name => XSD::QName.new(NsV8, "MediaType"),
    :schema_element => [
      ["dimensions", ["AdCenterWrapper::ArrayOfDimension", XSD::QName.new(NsV8, "Dimensions")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDimension,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfDimension"),
    :schema_element => [
      ["dimension", ["AdCenterWrapper::Dimension[]", XSD::QName.new(NsV8, "Dimension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Dimension,
    :schema_name => XSD::QName.new(NsV8, "Dimension"),
    :schema_element => [
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNormalizedStringsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetNormalizedStringsRequest"),
    :schema_element => [
      ["strings", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "Strings")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNormalizedStringsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetNormalizedStringsResponse"),
    :schema_element => [
      ["normalizedStrings", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NormalizedStrings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["keywordIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "KeywordIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKeywordEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetKeywordEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["AdCenterWrapper::ArrayOfEditorialReasonCollection", XSD::QName.new(NsV8, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfEditorialReasonCollection"),
    :schema_element => [
      ["editorialReasonCollection", ["AdCenterWrapper::EditorialReasonCollection[]", XSD::QName.new(NsV8, "EditorialReasonCollection")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReasonCollection,
    :schema_name => XSD::QName.new(NsV8, "EditorialReasonCollection"),
    :schema_element => [
      ["adOrKeywordId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdOrKeywordId")], [0, 1]],
      ["reasons", ["AdCenterWrapper::ArrayOfEditorialReason", XSD::QName.new(NsV8, "Reasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfEditorialReason,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfEditorialReason"),
    :schema_element => [
      ["editorialReason", ["AdCenterWrapper::EditorialReason[]", XSD::QName.new(NsV8, "EditorialReason")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialReason,
    :schema_name => XSD::QName.new(NsV8, "EditorialReason"),
    :schema_element => [
      ["location", ["AdCenterWrapper::AdComponent", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "ReasonCode")], [0, 1]],
      ["term", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Term")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdEditorialReasonsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdEditorialReasonsByIdsRequest"),
    :schema_element => [
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdEditorialReasonsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdEditorialReasonsByIdsResponse"),
    :schema_element => [
      ["editorialReasons", ["AdCenterWrapper::ArrayOfEditorialReasonCollection", XSD::QName.new(NsV8, "EditorialReasons")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DownloadCampaignHierarchyRequest,
    :schema_name => XSD::QName.new(NsV8, "DownloadCampaignHierarchyRequest"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AccountIds")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignScope", XSD::QName.new(NsV8, "Campaigns")], [0, 1]],
      ["lastSyncTimeInUTC", ["SOAP::SOAPDateTime", XSD::QName.new(NsV8, "LastSyncTimeInUTC")], [0, 1]],
      ["entityFilter", [nil, XSD::QName.new(NsV8, "EntityFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignScope,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCampaignScope"),
    :schema_element => [
      ["campaignScope", ["AdCenterWrapper::CampaignScope[]", XSD::QName.new(NsV8, "CampaignScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignScope,
    :schema_name => XSD::QName.new(NsV8, "CampaignScope"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "ParentAccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DownloadCampaignHierarchyResponse,
    :schema_name => XSD::QName.new(NsV8, "DownloadCampaignHierarchyResponse"),
    :schema_element => [
      ["downloadRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DownloadRequestId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDownloadStatusRequest,
    :schema_name => XSD::QName.new(NsV8, "GetDownloadStatusRequest"),
    :schema_element => [
      ["downloadRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DownloadRequestId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDownloadStatusResponse,
    :schema_name => XSD::QName.new(NsV8, "GetDownloadStatusResponse"),
    :schema_element => [
      ["downloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DownloadUrl")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV8, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddGoalsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddGoalsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["goals", ["AdCenterWrapper::ArrayOfGoal", XSD::QName.new(NsV8, "Goals")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddGoalsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddGoalsResponse"),
    :schema_element => [
      ["goalResults", ["AdCenterWrapper::ArrayOfGoalResult", XSD::QName.new(NsV8, "GoalResults")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AnalyticsApiFaultDetail,
    :schema_name => XSD::QName.new(NsV8, "AnalyticsApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["goalErrors", ["AdCenterWrapper::ArrayOfGoalError", XSD::QName.new(NsV8, "GoalErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateGoalsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateGoalsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["goals", ["AdCenterWrapper::ArrayOfGoal", XSD::QName.new(NsV8, "Goals")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateGoalsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateGoalsResponse"),
    :schema_element => [
      ["goalResults", ["AdCenterWrapper::ArrayOfGoalResult", XSD::QName.new(NsV8, "GoalResults")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetGoalsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetGoalsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetGoalsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetGoalsResponse"),
    :schema_element => [
      ["goals", ["AdCenterWrapper::ArrayOfGoal", XSD::QName.new(NsV8, "Goals")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteGoalsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteGoalsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteGoalsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteGoalsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetAnalyticsTypeRequest,
    :schema_name => XSD::QName.new(NsV8, "SetAnalyticsTypeRequest"),
    :schema_element => [
      ["accountAnalyticsTypes", ["AdCenterWrapper::ArrayOfAccountAnalyticsType", XSD::QName.new(NsV8, "AccountAnalyticsTypes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetAnalyticsTypeResponse,
    :schema_name => XSD::QName.new(NsV8, "SetAnalyticsTypeResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAnalyticsTypeRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAnalyticsTypeRequest"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAnalyticsTypeResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAnalyticsTypeResponse"),
    :schema_element => [
      ["types", ["AdCenterWrapper::ArrayOfAnalyticsType", XSD::QName.new(NsV8, "Types")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignAdExtensionsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignAdExtensionsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignAdExtensionsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignAdExtensionsResponse"),
    :schema_element => [
      ["adExtensions", ["AdCenterWrapper::ArrayOfAdExtension", XSD::QName.new(NsV8, "AdExtensions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdExtension,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAdExtension"),
    :schema_element => [
      ["adExtension", ["AdCenterWrapper::AdExtension[]", XSD::QName.new(NsV8, "AdExtension")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdExtension,
    :schema_name => XSD::QName.new(NsV8, "AdExtension"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")]],
      ["enableLocationExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableLocationExtension")], [0, 1]],
      ["phoneExtension", ["AdCenterWrapper::PhoneExtension", XSD::QName.new(NsV8, "PhoneExtension")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PhoneExtension,
    :schema_name => XSD::QName.new(NsV8, "PhoneExtension"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["enableClickToCallOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnableClickToCallOnly")], [0, 1]],
      ["enablePhoneExtension", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "EnablePhoneExtension")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Phone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetCampaignAdExtensionsRequest,
    :schema_name => XSD::QName.new(NsV8, "SetCampaignAdExtensionsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["adExtensions", ["AdCenterWrapper::ArrayOfAdExtension", XSD::QName.new(NsV8, "AdExtensions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetCampaignAdExtensionsResponse,
    :schema_name => XSD::QName.new(NsV8, "SetCampaignAdExtensionsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV8, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaign,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCampaign"),
    :schema_element => [
      ["campaign", ["AdCenterWrapper::Campaign[]", XSD::QName.new(NsV8, "Campaign")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Campaign,
    :schema_name => XSD::QName.new(NsV8, "Campaign"),
    :schema_element => [
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsV8, "BudgetType")], [0, 1]],
      ["conversionTrackingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "ConversionTrackingEnabled")], [0, 1]],
      ["dailyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "DailyBudget")], [0, 1]],
      ["daylightSaving", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "DaylightSaving")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Description")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["monthlyBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "MonthlyBudget")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["status", ["AdCenterWrapper::CampaignStatus", XSD::QName.new(NsV8, "Status")], [0, 1]],
      ["timeZone", ["SOAP::SOAPString", XSD::QName.new(NsV8, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_name => XSD::QName.new(NsV8, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignStatus,
    :schema_name => XSD::QName.new(NsV8, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddCampaignsResponse"),
    :schema_element => [
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByAccountIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignsByAccountIdRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByAccountIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignsByAccountIdResponse"),
    :schema_element => [
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV8, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignsByIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCampaignsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetCampaignsByIdsResponse"),
    :schema_element => [
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV8, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "PauseCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "PauseCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "ResumeCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "ResumeCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaign", XSD::QName.new(NsV8, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeKeywordsByCampaignIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeKeywordsByCampaignIdsResponse"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV8, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeKeywords"),
    :schema_element => [
      ["campaignNegativeKeywords", ["AdCenterWrapper::CampaignNegativeKeywords[]", XSD::QName.new(NsV8, "CampaignNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeKeywords,
    :schema_name => XSD::QName.new(NsV8, "CampaignNegativeKeywords"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeKeywordsToCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignNegativeKeywords", ["AdCenterWrapper::ArrayOfCampaignNegativeKeywords", XSD::QName.new(NsV8, "CampaignNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeKeywordsToCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeSitesByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeSitesByCampaignIdsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeSitesByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeSitesByCampaignIdsResponse"),
    :schema_element => [
      ["campaignNegativeSites", ["AdCenterWrapper::ArrayOfCampaignNegativeSites", XSD::QName.new(NsV8, "CampaignNegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignNegativeSites,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCampaignNegativeSites"),
    :schema_element => [
      ["campaignNegativeSites", ["AdCenterWrapper::CampaignNegativeSites[]", XSD::QName.new(NsV8, "CampaignNegativeSites")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignNegativeSites,
    :schema_name => XSD::QName.new(NsV8, "CampaignNegativeSites"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeSitesToCampaignsRequest,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeSitesToCampaignsRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["campaignNegativeSites", ["AdCenterWrapper::ArrayOfCampaignNegativeSites", XSD::QName.new(NsV8, "CampaignNegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeSitesToCampaignsResponse,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeSitesToCampaignsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV8, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroup,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAdGroup"),
    :schema_element => [
      ["adGroup", ["AdCenterWrapper::AdGroup[]", XSD::QName.new(NsV8, "AdGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroup,
    :schema_name => XSD::QName.new(NsV8, "AdGroup"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV8, "AdDistribution")], [0, 1]],
      ["biddingModel", ["AdCenterWrapper::BiddingModel", XSD::QName.new(NsV8, "BiddingModel")], [0, 1]],
      ["broadMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "BroadMatchBid")], [0, 1]],
      ["contentMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ContentMatchBid")], [0, 1]],
      ["endDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "EndDate")], [0, 1]],
      ["exactMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "ExactMatchBid")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Language")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["network", ["AdCenterWrapper::Network", XSD::QName.new(NsV8, "Network")], [0, 1]],
      ["phraseMatchBid", ["AdCenterWrapper::Bid", XSD::QName.new(NsV8, "PhraseMatchBid")], [0, 1]],
      ["pricingModel", ["AdCenterWrapper::PricingModel", XSD::QName.new(NsV8, "PricingModel")], [0, 1]],
      ["publisherCountries", ["AdCenterWrapper::ArrayOfPublisherCountry", XSD::QName.new(NsV8, "PublisherCountries")], [0, 1]],
      ["startDate", ["AdCenterWrapper::Date", XSD::QName.new(NsV8, "StartDate")], [0, 1]],
      ["status", ["AdCenterWrapper::AdGroupStatus", XSD::QName.new(NsV8, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BiddingModel,
    :schema_name => XSD::QName.new(NsV8, "BiddingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Date,
    :schema_name => XSD::QName.new(NsV8, "Date"),
    :schema_element => [
      ["day", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Day")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Network,
    :schema_name => XSD::QName.new(NsV8, "Network")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PricingModel,
    :schema_name => XSD::QName.new(NsV8, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherCountry,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfPublisherCountry"),
    :schema_element => [
      ["publisherCountry", ["AdCenterWrapper::PublisherCountry[]", XSD::QName.new(NsV8, "PublisherCountry")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherCountry,
    :schema_name => XSD::QName.new(NsV8, "PublisherCountry"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Country")], [0, 1]],
      ["isOptedIn", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsOptedIn")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupStatus,
    :schema_name => XSD::QName.new(NsV8, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddAdGroupsResponse"),
    :schema_element => [
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdGroupsByIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdGroupsByIdsResponse"),
    :schema_element => [
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV8, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByCampaignIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetAdGroupsByCampaignIdRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAdGroupsByCampaignIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetAdGroupsByCampaignIdResponse"),
    :schema_element => [
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV8, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "PauseAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PauseAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "PauseAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "ResumeAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ResumeAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "ResumeAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitAdGroupForApprovalRequest,
    :schema_name => XSD::QName.new(NsV8, "SubmitAdGroupForApprovalRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitAdGroupForApprovalResponse,
    :schema_name => XSD::QName.new(NsV8, "SubmitAdGroupForApprovalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroup", XSD::QName.new(NsV8, "AdGroups")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeKeywordsByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeKeywordsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeKeywordsByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV8, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupNegativeKeywords", ["AdCenterWrapper::AdGroupNegativeKeywords[]", XSD::QName.new(NsV8, "AdGroupNegativeKeywords")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeKeywords,
    :schema_name => XSD::QName.new(NsV8, "AdGroupNegativeKeywords"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeKeywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeKeywordsToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupNegativeKeywords", ["AdCenterWrapper::ArrayOfAdGroupNegativeKeywords", XSD::QName.new(NsV8, "AdGroupNegativeKeywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeKeywordsToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeKeywordsToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeSitesByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeSitesByAdGroupIdsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNegativeSitesByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetNegativeSitesByAdGroupIdsResponse"),
    :schema_element => [
      ["adGroupNegativeSites", ["AdCenterWrapper::ArrayOfAdGroupNegativeSites", XSD::QName.new(NsV8, "AdGroupNegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupNegativeSites,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAdGroupNegativeSites"),
    :schema_element => [
      ["adGroupNegativeSites", ["AdCenterWrapper::AdGroupNegativeSites[]", XSD::QName.new(NsV8, "AdGroupNegativeSites")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupNegativeSites,
    :schema_name => XSD::QName.new(NsV8, "AdGroupNegativeSites"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["negativeSites", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "NegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeSitesToAdGroupsRequest,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeSitesToAdGroupsRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["adGroupNegativeSites", ["AdCenterWrapper::ArrayOfAdGroupNegativeSites", XSD::QName.new(NsV8, "AdGroupNegativeSites")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetNegativeSitesToAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV8, "SetNegativeSitesToAdGroupsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetRequest,
    :schema_name => XSD::QName.new(NsV8, "AddTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV8, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Target,
    :schema_name => XSD::QName.new(NsV8, "Target"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeTarget", XSD::QName.new(NsV8, "Age")], [0, 1]],
      ["day", ["AdCenterWrapper::DayTarget", XSD::QName.new(NsV8, "Day")], [0, 1]],
      ["device", ["AdCenterWrapper::DeviceTarget", XSD::QName.new(NsV8, "Device")], [0, 1]],
      ["gender", ["AdCenterWrapper::GenderTarget", XSD::QName.new(NsV8, "Gender")], [0, 1]],
      ["hour", ["AdCenterWrapper::HourTarget", XSD::QName.new(NsV8, "Hour")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["isLibraryTarget", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "IsLibraryTarget")], [0, 1]],
      ["location", ["AdCenterWrapper::LocationTarget", XSD::QName.new(NsV8, "Location")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTarget,
    :schema_name => XSD::QName.new(NsV8, "AgeTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfAgeTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfAgeTargetBid"),
    :schema_element => [
      ["ageTargetBid", ["AdCenterWrapper::AgeTargetBid[]", XSD::QName.new(NsV8, "AgeTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeTargetBid,
    :schema_name => XSD::QName.new(NsV8, "AgeTargetBid"),
    :schema_element => [
      ["age", ["AdCenterWrapper::AgeRange", XSD::QName.new(NsV8, "Age")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeRange,
    :schema_name => XSD::QName.new(NsV8, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::IncrementalBidPercentage,
    :schema_name => XSD::QName.new(NsV8, "IncrementalBidPercentage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTarget,
    :schema_name => XSD::QName.new(NsV8, "DayTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfDayTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllDays", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllDays")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDayTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfDayTargetBid"),
    :schema_element => [
      ["dayTargetBid", ["AdCenterWrapper::DayTargetBid[]", XSD::QName.new(NsV8, "DayTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DayTargetBid,
    :schema_name => XSD::QName.new(NsV8, "DayTargetBid"),
    :schema_element => [
      ["day", ["AdCenterWrapper::Day", XSD::QName.new(NsV8, "Day")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceTarget,
    :schema_name => XSD::QName.new(NsV8, "DeviceTarget"),
    :schema_element => [
      ["devices", ["AdCenterWrapper::ArrayOfDeviceType", XSD::QName.new(NsV8, "Devices")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceType,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfDeviceType"),
    :schema_element => [
      ["deviceType", ["AdCenterWrapper::DeviceType[]", XSD::QName.new(NsV8, "DeviceType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceType,
    :schema_name => XSD::QName.new(NsV8, "DeviceType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTarget,
    :schema_name => XSD::QName.new(NsV8, "GenderTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfGenderTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGenderTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfGenderTargetBid"),
    :schema_element => [
      ["genderTargetBid", ["AdCenterWrapper::GenderTargetBid[]", XSD::QName.new(NsV8, "GenderTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderTargetBid,
    :schema_name => XSD::QName.new(NsV8, "GenderTargetBid"),
    :schema_element => [
      ["gender", ["AdCenterWrapper::GenderType", XSD::QName.new(NsV8, "Gender")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GenderType,
    :schema_name => XSD::QName.new(NsV8, "GenderType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTarget,
    :schema_name => XSD::QName.new(NsV8, "HourTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfHourTargetBid", XSD::QName.new(NsV8, "Bids")]],
      ["targetAllHours", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfHourTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfHourTargetBid"),
    :schema_element => [
      ["hourTargetBid", ["AdCenterWrapper::HourTargetBid[]", XSD::QName.new(NsV8, "HourTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourTargetBid,
    :schema_name => XSD::QName.new(NsV8, "HourTargetBid"),
    :schema_element => [
      ["hour", ["AdCenterWrapper::HourRange", XSD::QName.new(NsV8, "Hour")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::HourRange,
    :schema_name => XSD::QName.new(NsV8, "HourRange")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LocationTarget,
    :schema_name => XSD::QName.new(NsV8, "LocationTarget"),
    :schema_element => [
      ["businessTarget", ["AdCenterWrapper::BusinessTarget", XSD::QName.new(NsV8, "BusinessTarget")], [0, 1]],
      ["cityTarget", ["AdCenterWrapper::CityTarget", XSD::QName.new(NsV8, "CityTarget")], [0, 1]],
      ["countryTarget", ["AdCenterWrapper::CountryTarget", XSD::QName.new(NsV8, "CountryTarget")], [0, 1]],
      ["hasPhysicalIntent", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "HasPhysicalIntent")], [0, 1]],
      ["metroAreaTarget", ["AdCenterWrapper::MetroAreaTarget", XSD::QName.new(NsV8, "MetroAreaTarget")], [0, 1]],
      ["radiusTarget", ["AdCenterWrapper::RadiusTarget", XSD::QName.new(NsV8, "RadiusTarget")], [0, 1]],
      ["stateTarget", ["AdCenterWrapper::StateTarget", XSD::QName.new(NsV8, "StateTarget")], [0, 1]],
      ["targetAllLocations", ["SOAP::SOAPBoolean", XSD::QName.new(NsV8, "TargetAllLocations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTarget,
    :schema_name => XSD::QName.new(NsV8, "BusinessTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfBusinessTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBusinessTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfBusinessTargetBid"),
    :schema_element => [
      ["businessTargetBid", ["AdCenterWrapper::BusinessTargetBid[]", XSD::QName.new(NsV8, "BusinessTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BusinessTargetBid,
    :schema_name => XSD::QName.new(NsV8, "BusinessTargetBid"),
    :schema_element => [
      ["businessId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "BusinessId")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTarget,
    :schema_name => XSD::QName.new(NsV8, "CityTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCityTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCityTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCityTargetBid"),
    :schema_element => [
      ["cityTargetBid", ["AdCenterWrapper::CityTargetBid[]", XSD::QName.new(NsV8, "CityTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CityTargetBid,
    :schema_name => XSD::QName.new(NsV8, "CityTargetBid"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsV8, "City")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTarget,
    :schema_name => XSD::QName.new(NsV8, "CountryTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfCountryTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCountryTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfCountryTargetBid"),
    :schema_element => [
      ["countryTargetBid", ["AdCenterWrapper::CountryTargetBid[]", XSD::QName.new(NsV8, "CountryTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CountryTargetBid,
    :schema_name => XSD::QName.new(NsV8, "CountryTargetBid"),
    :schema_element => [
      ["countryAndRegion", ["SOAP::SOAPString", XSD::QName.new(NsV8, "CountryAndRegion")]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTarget,
    :schema_name => XSD::QName.new(NsV8, "MetroAreaTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfMetroAreaTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfMetroAreaTargetBid"),
    :schema_element => [
      ["metroAreaTargetBid", ["AdCenterWrapper::MetroAreaTargetBid[]", XSD::QName.new(NsV8, "MetroAreaTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaTargetBid,
    :schema_name => XSD::QName.new(NsV8, "MetroAreaTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["metroArea", ["SOAP::SOAPString", XSD::QName.new(NsV8, "MetroArea")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTarget,
    :schema_name => XSD::QName.new(NsV8, "RadiusTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfRadiusTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfRadiusTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfRadiusTargetBid"),
    :schema_element => [
      ["radiusTargetBid", ["AdCenterWrapper::RadiusTargetBid[]", XSD::QName.new(NsV8, "RadiusTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RadiusTargetBid,
    :schema_name => XSD::QName.new(NsV8, "RadiusTargetBid"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["latitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LatitudeDegrees")]],
      ["longitudeDegrees", ["SOAP::SOAPDouble", XSD::QName.new(NsV8, "LongitudeDegrees")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")], [0, 1]],
      ["radius", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Radius")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTarget,
    :schema_name => XSD::QName.new(NsV8, "StateTarget"),
    :schema_element => [
      ["bids", ["AdCenterWrapper::ArrayOfStateTargetBid", XSD::QName.new(NsV8, "Bids")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStateTargetBid,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfStateTargetBid"),
    :schema_element => [
      ["stateTargetBid", ["AdCenterWrapper::StateTargetBid[]", XSD::QName.new(NsV8, "StateTargetBid")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StateTargetBid,
    :schema_name => XSD::QName.new(NsV8, "StateTargetBid"),
    :schema_element => [
      ["incrementalBid", ["AdCenterWrapper::IncrementalBidPercentage", XSD::QName.new(NsV8, "IncrementalBid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsV8, "State")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetResponse,
    :schema_name => XSD::QName.new(NsV8, "AddTargetResponse"),
    :schema_element => [
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetByAdGroupIdRequest,
    :schema_name => XSD::QName.new(NsV8, "GetTargetByAdGroupIdRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetByAdGroupIdResponse,
    :schema_name => XSD::QName.new(NsV8, "GetTargetByAdGroupIdResponse"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV8, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateTargetRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["target", ["AdCenterWrapper::Target", XSD::QName.new(NsV8, "Target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateTargetResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetsToLibraryRequest,
    :schema_name => XSD::QName.new(NsV8, "AddTargetsToLibraryRequest"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV8, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTarget,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfTarget"),
    :schema_element => [
      ["target", ["AdCenterWrapper::Target[]", XSD::QName.new(NsV8, "Target")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddTargetsToLibraryResponse,
    :schema_name => XSD::QName.new(NsV8, "AddTargetsToLibraryResponse"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetsInLibraryRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateTargetsInLibraryRequest"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV8, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateTargetsInLibraryResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateTargetsInLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateDeviceOSTargetsRequest,
    :schema_name => XSD::QName.new(NsV8, "UpdateDeviceOSTargetsRequest"),
    :schema_element => [
      ["targetAssociations", ["AdCenterWrapper::ArrayOfTargetAssociation", XSD::QName.new(NsV8, "TargetAssociations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetAssociation,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfTargetAssociation"),
    :schema_element => [
      ["targetAssociation", ["AdCenterWrapper::TargetAssociation[]", XSD::QName.new(NsV8, "TargetAssociation")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetAssociation,
    :schema_name => XSD::QName.new(NsV8, "TargetAssociation"),
    :schema_element => [
      ["deviceOSTarget", ["AdCenterWrapper::DeviceOSTarget", XSD::QName.new(NsV8, "DeviceOSTarget")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceOSTarget,
    :schema_name => XSD::QName.new(NsV8, "DeviceOSTarget"),
    :schema_element => [
      ["deviceOSList", ["AdCenterWrapper::ArrayOfDeviceOS", XSD::QName.new(NsV8, "DeviceOSList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDeviceOS,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfDeviceOS"),
    :schema_element => [
      ["deviceOS", ["AdCenterWrapper::DeviceOS[]", XSD::QName.new(NsV8, "DeviceOS")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeviceOS,
    :schema_name => XSD::QName.new(NsV8, "DeviceOS"),
    :schema_element => [
      ["deviceName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "DeviceName")], [0, 1]],
      ["oSName", ["SOAP::SOAPString", XSD::QName.new(NsV8, "OSName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateDeviceOSTargetsResponse,
    :schema_name => XSD::QName.new(NsV8, "UpdateDeviceOSTargetsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetsFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetsFromLibraryRequest"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetsFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetsFromLibraryResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsInfoFromLibraryRequest,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsInfoFromLibraryRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsInfoFromLibraryResponse,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsInfoFromLibraryResponse"),
    :schema_element => [
      ["targetsInfo", ["AdCenterWrapper::ArrayOfTargetInfo", XSD::QName.new(NsV8, "TargetsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTargetInfo,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfTargetInfo"),
    :schema_element => [
      ["targetInfo", ["AdCenterWrapper::TargetInfo[]", XSD::QName.new(NsV8, "TargetInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TargetInfo,
    :schema_name => XSD::QName.new(NsV8, "TargetInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Name")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByIdsRequest"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV8, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDeviceOSTargetsByIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetDeviceOSTargetsByIdsRequest"),
    :schema_element => [
      ["targetIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "TargetIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDeviceOSTargetsByIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetDeviceOSTargetsByIdsResponse"),
    :schema_element => [
      ["targetAssociations", ["AdCenterWrapper::ArrayOfTargetAssociation", XSD::QName.new(NsV8, "TargetAssociations")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToAdGroupRequest,
    :schema_name => XSD::QName.new(NsV8, "SetTargetToAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToAdGroupResponse,
    :schema_name => XSD::QName.new(NsV8, "SetTargetToAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromAdGroupRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetFromAdGroupRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromAdGroupResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetFromAdGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByAdGroupIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByAdGroupIdsRequest"),
    :schema_element => [
      ["adGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdGroupIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByAdGroupIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByAdGroupIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV8, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToCampaignRequest,
    :schema_name => XSD::QName.new(NsV8, "SetTargetToCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]],
      ["targetId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "TargetId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SetTargetToCampaignResponse,
    :schema_name => XSD::QName.new(NsV8, "SetTargetToCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromCampaignRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetFromCampaignRequest"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "CampaignId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteTargetFromCampaignResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteTargetFromCampaignResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByCampaignIdsRequest,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByCampaignIdsRequest"),
    :schema_element => [
      ["campaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "CampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetTargetsByCampaignIdsResponse,
    :schema_name => XSD::QName.new(NsV8, "GetTargetsByCampaignIdsResponse"),
    :schema_element => [
      ["targets", ["AdCenterWrapper::ArrayOfTarget", XSD::QName.new(NsV8, "Targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdsRequest,
    :schema_name => XSD::QName.new(NsV8, "AddAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["ads", ["AdCenterWrapper::ArrayOfAd", XSD::QName.new(NsV8, "Ads")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAdsResponse,
    :schema_name => XSD::QName.new(NsV8, "AddAdsResponse"),
    :schema_element => [
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdsRequest,
    :schema_name => XSD::QName.new(NsV8, "DeleteAdsRequest"),
    :schema_element => [
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AdGroupId")], [0, 1]],
      ["adIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV8, "AdIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAdsResponse,
    :schema_name => XSD::QName.new(NsV8, "DeleteAdsResponse"),
    :schema_element => []
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
    :class => AdCenterWrapper::ApplicationFault,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfGoal,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoal"),
    :schema_element => [
      ["goal", ["AdCenterWrapper::Goal[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Goal,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Goal"),
    :schema_element => [
      ["costModel", [nil, XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "CostModel")], [0, 1]],
      ["daysApplicableForConversion", ["AdCenterWrapper::DaysApplicableForConversion", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["revenueModel", ["AdCenterWrapper::RevenueModel", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel")], [0, 1]],
      ["steps", ["AdCenterWrapper::ArrayOfStep", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Steps")], [0, 1]],
      ["yEventId", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "YEventId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DaysApplicableForConversion,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "DaysApplicableForConversion")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RevenueModel,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModel"),
    :schema_element => [
      ["constantRevenueValue", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ConstantRevenueValue")], [0, 1]],
      ["type", ["AdCenterWrapper::RevenueModelType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::RevenueModelType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "RevenueModelType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfStep,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfStep"),
    :schema_element => [
      ["step", ["AdCenterWrapper::Step[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Step,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Step"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Name")], [0, 1]],
      ["positionNumber", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "PositionNumber")], [0, 1]],
      ["script", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Script")], [0, 1]],
      ["type", ["AdCenterWrapper::StepType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::StepType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalResult,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalResult"),
    :schema_element => [
      ["goalResult", ["AdCenterWrapper::GoalResult[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalResult,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalResult"),
    :schema_element => [
      ["goalId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalId")], [0, 1]],
      ["stepIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalError,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfGoalError"),
    :schema_element => [
      ["goalError", ["AdCenterWrapper::GoalError[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalError,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "GoalError"),
    :schema_element => [
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "BatchErrors")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Index")], [0, 1]],
      ["stepErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "StepErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountAnalyticsType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAccountAnalyticsType"),
    :schema_element => [
      ["accountAnalyticsType", ["AdCenterWrapper::AccountAnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountAnalyticsType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountAnalyticsType"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AccountId")], [0, 1]],
      ["type", ["AdCenterWrapper::AnalyticsType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AnalyticsType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAnalyticsType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "ArrayOfAnalyticsType"),
    :schema_element => [
      ["analyticsType", ["AdCenterWrapper::AnalyticsType[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserCampaignManagementApiDataContracts, "AnalyticsType")], [0, nil]]
    ]
  )

end

end
