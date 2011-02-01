require 'adcenter_wrapper_entities'
require 'soap/mapping'

module AdCenterWrapper

module ReportingServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsV7 = "https://adcenter.microsoft.com/v7"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdCenterWrapper::AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountThroughAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdCenterWrapper::AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["AdCenterWrapper::CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportTime,
    :schema_type => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
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
    :class => AdCenterWrapper::KeywordPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["AdCenterWrapper::KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["AdCenterWrapper::DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["AdCenterWrapper::TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AdCenterWrapper::AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["AdCenterWrapper::CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountThroughCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdCenterWrapper::AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdCenterWrapper::AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["AdCenterWrapper::ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["AdCenterWrapper::BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTime,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AdCenterWrapper::AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["AdCenterWrapper::MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["AdCenterWrapper::PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["AdCenterWrapper::SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["AdCenterWrapper::BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["AdCenterWrapper::BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["AdCenterWrapper::SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["AdCenterWrapper::ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportRequest,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["AdCenterWrapper::GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportFilter,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfTrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["AdCenterWrapper::TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SegmentationReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["AdCenterWrapper::SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SegmentationReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
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
    :class => AdCenterWrapper::ReportRequestStatus,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["AdCenterWrapper::ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
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
    :class => AdCenterWrapper::ReportFormat,
    :schema_type => XSD::QName.new(NsV7, "ReportFormat")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportLanguage,
    :schema_type => XSD::QName.new(NsV7, "ReportLanguage")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::NonHourlyReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "ReportAggregation")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SearchQueryReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ReportRequestStatusType,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatusType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdCenterWrapper::AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountThroughAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdCenterWrapper::AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["AdCenterWrapper::CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportTime,
    :schema_type => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
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
    :class => AdCenterWrapper::KeywordPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["AdCenterWrapper::KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["AdCenterWrapper::DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["AdCenterWrapper::TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AdCenterWrapper::AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["AdCenterWrapper::CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountThroughCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdCenterWrapper::AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdCenterWrapper::AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["AdCenterWrapper::ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["AdCenterWrapper::BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTime,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AdCenterWrapper::AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["AdCenterWrapper::MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["AdCenterWrapper::PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["AdCenterWrapper::SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["AdCenterWrapper::BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["AdCenterWrapper::BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["AdCenterWrapper::SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["AdCenterWrapper::ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportRequest,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["AdCenterWrapper::GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportFilter,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["AdCenterWrapper::TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["AdCenterWrapper::SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
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
    :class => AdCenterWrapper::ReportRequestStatus,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["AdCenterWrapper::ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
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
    :class => AdCenterWrapper::ReportFormat,
    :schema_type => XSD::QName.new(NsV7, "ReportFormat")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportLanguage,
    :schema_type => XSD::QName.new(NsV7, "ReportLanguage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::NonHourlyReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "ReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportRequestStatusType,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatusType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitGenerateReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SubmitGenerateReportRequest"),
    :schema_element => [
      ["reportRequest", ["AdCenterWrapper::ReportRequest", XSD::QName.new(NsV7, "ReportRequest")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportRequest,
    :schema_name => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportFormat,
    :schema_name => XSD::QName.new(NsV7, "ReportFormat")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportLanguage,
    :schema_name => XSD::QName.new(NsV7, "ReportLanguage")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::NonHourlyReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdCenterWrapper::AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdDynamicTextPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountThroughAdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["AdCenterWrapper::ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdCenterWrapper::AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["AdCenterWrapper::CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportTime,
    :schema_name => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
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
    :class => AdCenterWrapper::ReportTimePeriod,
    :schema_name => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "ReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfKeywordPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["AdCenterWrapper::KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::KeywordPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["AdCenterWrapper::DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DestinationUrlPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportRequest,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTacticChannelReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["AdCenterWrapper::TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportColumn,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TacticChannelReportFilter,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AdCenterWrapper::AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCampaignPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["AdCenterWrapper::CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountThroughCampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["AdCenterWrapper::ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdGroupPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdCenterWrapper::AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdGroupPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdCenterWrapper::AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["AdCenterWrapper::ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetSummaryReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["AdCenterWrapper::BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTime,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["AdCenterWrapper::Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["AdCenterWrapper::BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetSummaryReportTimePeriod,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAgeGenderDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AdCenterWrapper::AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AgeGenderDemographicReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportRequest,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfMetroAreaDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["AdCenterWrapper::MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::MetroAreaDemographicReportFilter,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["AdCenterWrapper::PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherUsagePerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSitePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["AdCenterWrapper::SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SitePerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralTargetReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["AdCenterWrapper::BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralTargetReportFilter,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBehavioralPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["AdCenterWrapper::BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BehavioralPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSearchQueryPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["AdCenterWrapper::SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SearchQueryPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfConversionPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["AdCenterWrapper::ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ConversionPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportRequest,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfGoalsAndFunnelsReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["AdCenterWrapper::GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportColumn,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GoalsAndFunnelsReportFilter,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportRequest,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfTrafficSourcesReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["AdCenterWrapper::TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportColumn,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TrafficSourcesReportFilter,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_element => [
      ["format", ["AdCenterWrapper::ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["AdCenterWrapper::ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["AdCenterWrapper::NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["AdCenterWrapper::ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdCenterWrapper::SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AdCenterWrapper::AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["AdCenterWrapper::ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfSegmentationReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["AdCenterWrapper::SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SegmentationReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SubmitGenerateReportResponse,
    :schema_name => XSD::QName.new(NsV7, "SubmitGenerateReportResponse"),
    :schema_element => [
      ["reportRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportRequestId")], [0, 1]]
    ]
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
    :class => AdCenterWrapper::PollGenerateReportRequest,
    :schema_name => XSD::QName.new(NsV7, "PollGenerateReportRequest"),
    :schema_element => [
      ["reportRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportRequestId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PollGenerateReportResponse,
    :schema_name => XSD::QName.new(NsV7, "PollGenerateReportResponse"),
    :schema_element => [
      ["reportRequestStatus", ["AdCenterWrapper::ReportRequestStatus", XSD::QName.new(NsV7, "ReportRequestStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportRequestStatus,
    :schema_name => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["AdCenterWrapper::ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ReportRequestStatusType,
    :schema_name => XSD::QName.new(NsV7, "ReportRequestStatusType")
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
end

end
