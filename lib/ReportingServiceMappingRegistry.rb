require 'ReportingService.rb'
require 'soap/mapping'

module ReportingServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsV7 = "https://adcenter.microsoft.com/v7"

  EncodedRegistry.register(
    :class => ReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdDynamicTextPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdDynamicTextPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountThroughAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  EncodedRegistry.register(
    :class => ReportTime,
    :schema_type => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
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
    :class => KeywordPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfKeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => KeywordPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DestinationUrlPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DestinationUrlPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TacticChannelReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TacticChannelReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountThroughCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdGroupPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BudgetSummaryReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BudgetSummaryReportTime,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AgeGenderDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AgeGenderDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MetroAreaDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfMetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MetroAreaDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PublisherUsagePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => PublisherUsagePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SitePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SitePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralTargetReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralTargetReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BehavioralPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchQueryPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchQueryPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConversionPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ConversionPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GoalsAndFunnelsReportRequest,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfGoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GoalsAndFunnelsReportFilter,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TrafficSourcesReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfTrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => TrafficSourcesReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SegmentationReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SegmentationReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
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
    :class => ReportRequestStatus,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
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
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
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
    :class => ReportFormat,
    :schema_type => XSD::QName.new(NsV7, "ReportFormat")
  )

  EncodedRegistry.register(
    :class => ReportLanguage,
    :schema_type => XSD::QName.new(NsV7, "ReportLanguage")
  )

  EncodedRegistry.register(
    :class => NonHourlyReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  EncodedRegistry.register(
    :class => AdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => ReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  EncodedRegistry.register(
    :class => ReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "ReportAggregation")
  )

  EncodedRegistry.register(
    :class => KeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => DestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => TacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  EncodedRegistry.register(
    :class => AccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => CampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => AdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => BudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  EncodedRegistry.register(
    :class => BudgetSummaryReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  EncodedRegistry.register(
    :class => AgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  EncodedRegistry.register(
    :class => MetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  EncodedRegistry.register(
    :class => PublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => SitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => BehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  EncodedRegistry.register(
    :class => BehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => SearchQueryReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  EncodedRegistry.register(
    :class => SearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => ConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  EncodedRegistry.register(
    :class => GoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  EncodedRegistry.register(
    :class => TrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  EncodedRegistry.register(
    :class => SegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  EncodedRegistry.register(
    :class => ReportRequestStatusType,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatusType")
  )

  LiteralRegistry.register(
    :class => ReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountThroughAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupReportScope,
    :schema_type => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportTime,
    :schema_type => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
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
    :class => KeywordPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TacticChannelReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TacticChannelReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountThroughCampaignReportScope,
    :schema_type => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportTime,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportRequest,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportFilter,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportRequest,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportFilter,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportRequest,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfGoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportFilter,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportRequest,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportFilter,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentationReportRequest,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_basetype => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentationReportFilter,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
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
    :class => ReportRequestStatus,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
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
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
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
    :class => ReportFormat,
    :schema_type => XSD::QName.new(NsV7, "ReportFormat")
  )

  LiteralRegistry.register(
    :class => ReportLanguage,
    :schema_type => XSD::QName.new(NsV7, "ReportLanguage")
  )

  LiteralRegistry.register(
    :class => NonHourlyReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => ReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => ReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "ReportAggregation")
  )

  LiteralRegistry.register(
    :class => KeywordPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => TacticChannelReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportTimePeriod,
    :schema_type => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportColumn,
    :schema_type => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => SearchQueryReportAggregation,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportColumn,
    :schema_type => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportColumn,
    :schema_type => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportColumn,
    :schema_type => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  LiteralRegistry.register(
    :class => SegmentationReportColumn,
    :schema_type => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  LiteralRegistry.register(
    :class => ReportRequestStatusType,
    :schema_type => XSD::QName.new(NsV7, "ReportRequestStatusType")
  )

  LiteralRegistry.register(
    :class => SubmitGenerateReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SubmitGenerateReportRequest"),
    :schema_element => [
      ["reportRequest", ["ReportRequest", XSD::QName.new(NsV7, "ReportRequest")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportRequest,
    :schema_name => XSD::QName.new(NsV7, "ReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportFormat,
    :schema_name => XSD::QName.new(NsV7, "ReportFormat")
  )

  LiteralRegistry.register(
    :class => ReportLanguage,
    :schema_name => XSD::QName.new(NsV7, "ReportLanguage")
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdDynamicTextPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdDynamicTextPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => NonHourlyReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "NonHourlyReportAggregation")
  )

  LiteralRegistry.register(
    :class => ArrayOfAdDynamicTextPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdDynamicTextPerformanceReportColumn"),
    :schema_element => [
      ["adDynamicTextPerformanceReportColumn", ["AdDynamicTextPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdDynamicTextPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdDynamicTextPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountThroughAdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountThroughAdGroupReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["adGroups", ["ArrayOfAdGroupReportScope", XSD::QName.new(NsV7, "AdGroups")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupReportScope"),
    :schema_element => [
      ["adGroupReportScope", ["AdGroupReportScope[]", XSD::QName.new(NsV7, "AdGroupReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupReportScope,
    :schema_name => XSD::QName.new(NsV7, "AdGroupReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["parentCampaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentCampaignId")]],
      ["adGroupId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "AdGroupId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignReportScope"),
    :schema_element => [
      ["campaignReportScope", ["CampaignReportScope[]", XSD::QName.new(NsV7, "CampaignReportScope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "CampaignReportScope"),
    :schema_element => [
      ["parentAccountId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "ParentAccountId")]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsV7, "CampaignId")]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportTime,
    :schema_name => XSD::QName.new(NsV7, "ReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["ReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
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
    :class => ReportTimePeriod,
    :schema_name => XSD::QName.new(NsV7, "ReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => KeywordPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfKeywordPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["KeywordPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "ReportAggregation")
  )

  LiteralRegistry.register(
    :class => ArrayOfKeywordPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfKeywordPerformanceReportColumn"),
    :schema_element => [
      ["keywordPerformanceReportColumn", ["KeywordPerformanceReportColumn[]", XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => KeywordPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => KeywordPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "KeywordPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["bidMatchType", [nil, XSD::QName.new(NsV7, "BidMatchType")], [0, 1]],
      ["cashback", [nil, XSD::QName.new(NsV7, "Cashback")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfDestinationUrlPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["DestinationUrlPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDestinationUrlPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfDestinationUrlPerformanceReportColumn"),
    :schema_element => [
      ["destinationUrlPerformanceReportColumn", ["DestinationUrlPerformanceReportColumn[]", XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => DestinationUrlPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "DestinationUrlPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TacticChannelReportRequest,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTacticChannelReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TacticChannelReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTacticChannelReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTacticChannelReportColumn"),
    :schema_element => [
      ["tacticChannelReportColumn", ["TacticChannelReportColumn[]", XSD::QName.new(NsV7, "TacticChannelReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TacticChannelReportColumn,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportColumn")
  )

  LiteralRegistry.register(
    :class => TacticChannelReportFilter,
    :schema_name => XSD::QName.new(NsV7, "TacticChannelReportFilter"),
    :schema_element => [
      ["channelIds", ["ArrayOflong", XSD::QName.new(NsV7, "ChannelIds")], [0, 1]],
      ["tacticIds", ["ArrayOflong", XSD::QName.new(NsV7, "TacticIds")], [0, 1]],
      ["thirdPartyAdGroupIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyAdGroupIds")], [0, 1]],
      ["thirdPartyCampaignIds", ["ArrayOflong", XSD::QName.new(NsV7, "ThirdPartyCampaignIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAccountPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AccountPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAccountPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAccountPerformanceReportColumn"),
    :schema_element => [
      ["accountPerformanceReportColumn", ["AccountPerformanceReportColumn[]", XSD::QName.new(NsV7, "AccountPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AccountPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AccountPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfCampaignPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["CampaignPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughCampaignReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCampaignPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfCampaignPerformanceReportColumn"),
    :schema_element => [
      ["campaignPerformanceReportColumn", ["CampaignPerformanceReportColumn[]", XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => CampaignPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "CampaignPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountThroughCampaignReportScope,
    :schema_name => XSD::QName.new(NsV7, "AccountThroughCampaignReportScope"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsV7, "AccountIds")], [0, 1]],
      ["campaigns", ["ArrayOfCampaignReportScope", XSD::QName.new(NsV7, "Campaigns")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdGroupPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdGroupPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdGroupPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdGroupPerformanceReportColumn"),
    :schema_element => [
      ["adGroupPerformanceReportColumn", ["AdGroupPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdGroupPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdGroupPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["deviceType", [nil, XSD::QName.new(NsV7, "DeviceType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["status", [nil, XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAdPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AdPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAdPerformanceReportColumn"),
    :schema_element => [
      ["adPerformanceReportColumn", ["AdPerformanceReportColumn[]", XSD::QName.new(NsV7, "AdPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => AdPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AdPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["columns", ["ArrayOfBudgetSummaryReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["BudgetSummaryReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBudgetSummaryReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBudgetSummaryReportColumn"),
    :schema_element => [
      ["budgetSummaryReportColumn", ["BudgetSummaryReportColumn[]", XSD::QName.new(NsV7, "BudgetSummaryReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportColumn")
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportTime,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportTime"),
    :schema_element => [
      ["customDateRangeEnd", ["Date", XSD::QName.new(NsV7, "CustomDateRangeEnd")], [0, 1]],
      ["customDateRangeStart", ["Date", XSD::QName.new(NsV7, "CustomDateRangeStart")], [0, 1]],
      ["predefinedTime", ["BudgetSummaryReportTimePeriod", XSD::QName.new(NsV7, "PredefinedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BudgetSummaryReportTimePeriod,
    :schema_name => XSD::QName.new(NsV7, "BudgetSummaryReportTimePeriod")
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportRequest,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfAgeGenderDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["AgeGenderDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAgeGenderDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfAgeGenderDemographicReportColumn"),
    :schema_element => [
      ["ageGenderDemographicReportColumn", ["AgeGenderDemographicReportColumn[]", XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => AgeGenderDemographicReportFilter,
    :schema_name => XSD::QName.new(NsV7, "AgeGenderDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportRequest,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfMetroAreaDemographicReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["MetroAreaDemographicReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfMetroAreaDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfMetroAreaDemographicReportColumn"),
    :schema_element => [
      ["metroAreaDemographicReportColumn", ["MetroAreaDemographicReportColumn[]", XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportColumn,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportColumn")
  )

  LiteralRegistry.register(
    :class => MetroAreaDemographicReportFilter,
    :schema_name => XSD::QName.new(NsV7, "MetroAreaDemographicReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfPublisherUsagePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["PublisherUsagePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfPublisherUsagePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfPublisherUsagePerformanceReportColumn"),
    :schema_element => [
      ["publisherUsagePerformanceReportColumn", ["PublisherUsagePerformanceReportColumn[]", XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => PublisherUsagePerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "PublisherUsagePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSitePerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SitePerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSitePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSitePerformanceReportColumn"),
    :schema_element => [
      ["sitePerformanceReportColumn", ["SitePerformanceReportColumn[]", XSD::QName.new(NsV7, "SitePerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => SitePerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SitePerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["siteIds", ["ArrayOflong", XSD::QName.new(NsV7, "SiteIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralTargetReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralTargetReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralTargetReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralTargetReportColumn"),
    :schema_element => [
      ["behavioralTargetReportColumn", ["BehavioralTargetReportColumn[]", XSD::QName.new(NsV7, "BehavioralTargetReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportColumn")
  )

  LiteralRegistry.register(
    :class => BehavioralTargetReportFilter,
    :schema_name => XSD::QName.new(NsV7, "BehavioralTargetReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["ReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfBehavioralPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["BehavioralPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBehavioralPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfBehavioralPerformanceReportColumn"),
    :schema_element => [
      ["behavioralPerformanceReportColumn", ["BehavioralPerformanceReportColumn[]", XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => BehavioralPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "BehavioralPerformanceReportFilter"),
    :schema_element => [
      ["adDistribution", [nil, XSD::QName.new(NsV7, "AdDistribution")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["behavioralIds", ["ArrayOflong", XSD::QName.new(NsV7, "BehavioralIds")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["SearchQueryReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSearchQueryPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SearchQueryPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchQueryReportAggregation,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryReportAggregation")
  )

  LiteralRegistry.register(
    :class => ArrayOfSearchQueryPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSearchQueryPerformanceReportColumn"),
    :schema_element => [
      ["searchQueryPerformanceReportColumn", ["SearchQueryPerformanceReportColumn[]", XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => SearchQueryPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SearchQueryPerformanceReportFilter"),
    :schema_element => [
      ["adStatus", [nil, XSD::QName.new(NsV7, "AdStatus")], [0, 1]],
      ["adType", [nil, XSD::QName.new(NsV7, "AdType")], [0, 1]],
      ["campaignStatus", [nil, XSD::QName.new(NsV7, "CampaignStatus")], [0, 1]],
      ["deliveredMatchType", [nil, XSD::QName.new(NsV7, "DeliveredMatchType")], [0, 1]],
      ["languageAndRegion", [nil, XSD::QName.new(NsV7, "LanguageAndRegion")], [0, 1]],
      ["searchQueries", ["ArrayOfstring", XSD::QName.new(NsV7, "SearchQueries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportRequest,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfConversionPerformanceReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["ConversionPerformanceReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfConversionPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfConversionPerformanceReportColumn"),
    :schema_element => [
      ["conversionPerformanceReportColumn", ["ConversionPerformanceReportColumn[]", XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportColumn")
  )

  LiteralRegistry.register(
    :class => ConversionPerformanceReportFilter,
    :schema_name => XSD::QName.new(NsV7, "ConversionPerformanceReportFilter"),
    :schema_element => [
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportRequest,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfGoalsAndFunnelsReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["GoalsAndFunnelsReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfGoalsAndFunnelsReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfGoalsAndFunnelsReportColumn"),
    :schema_element => [
      ["goalsAndFunnelsReportColumn", ["GoalsAndFunnelsReportColumn[]", XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportColumn,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportColumn")
  )

  LiteralRegistry.register(
    :class => GoalsAndFunnelsReportFilter,
    :schema_name => XSD::QName.new(NsV7, "GoalsAndFunnelsReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportRequest,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfTrafficSourcesReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["TrafficSourcesReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfTrafficSourcesReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfTrafficSourcesReportColumn"),
    :schema_element => [
      ["trafficSourcesReportColumn", ["TrafficSourcesReportColumn[]", XSD::QName.new(NsV7, "TrafficSourcesReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportColumn,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportColumn")
  )

  LiteralRegistry.register(
    :class => TrafficSourcesReportFilter,
    :schema_name => XSD::QName.new(NsV7, "TrafficSourcesReportFilter"),
    :schema_element => [
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentationReportRequest,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportRequest"),
    :schema_element => [
      ["format", ["ReportFormat", XSD::QName.new(NsV7, "Format")], [0, 1]],
      ["language", ["ReportLanguage", XSD::QName.new(NsV7, "Language")], [0, 1]],
      ["reportName", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportName")], [0, 1]],
      ["returnOnlyCompleteData", ["SOAP::SOAPBoolean", XSD::QName.new(NsV7, "ReturnOnlyCompleteData")], [0, 1]],
      ["aggregation", ["NonHourlyReportAggregation", XSD::QName.new(NsV7, "Aggregation")]],
      ["columns", ["ArrayOfSegmentationReportColumn", XSD::QName.new(NsV7, "Columns")]],
      ["filter", ["SegmentationReportFilter", XSD::QName.new(NsV7, "Filter")], [0, 1]],
      ["scope", ["AccountThroughAdGroupReportScope", XSD::QName.new(NsV7, "Scope")]],
      ["time", ["ReportTime", XSD::QName.new(NsV7, "Time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSegmentationReportColumn,
    :schema_name => XSD::QName.new(NsV7, "ArrayOfSegmentationReportColumn"),
    :schema_element => [
      ["segmentationReportColumn", ["SegmentationReportColumn[]", XSD::QName.new(NsV7, "SegmentationReportColumn")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SegmentationReportColumn,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportColumn")
  )

  LiteralRegistry.register(
    :class => SegmentationReportFilter,
    :schema_name => XSD::QName.new(NsV7, "SegmentationReportFilter"),
    :schema_element => [
      ["ageGroup", [nil, XSD::QName.new(NsV7, "AgeGroup")], [0, 1]],
      ["country", [nil, XSD::QName.new(NsV7, "Country")], [0, 1]],
      ["gender", [nil, XSD::QName.new(NsV7, "Gender")], [0, 1]],
      ["goalIds", ["ArrayOflong", XSD::QName.new(NsV7, "GoalIds")], [0, 1]],
      ["keywords", ["ArrayOfstring", XSD::QName.new(NsV7, "Keywords")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SubmitGenerateReportResponse,
    :schema_name => XSD::QName.new(NsV7, "SubmitGenerateReportResponse"),
    :schema_element => [
      ["reportRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportRequestId")], [0, 1]]
    ]
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
    :class => PollGenerateReportRequest,
    :schema_name => XSD::QName.new(NsV7, "PollGenerateReportRequest"),
    :schema_element => [
      ["reportRequestId", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportRequestId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PollGenerateReportResponse,
    :schema_name => XSD::QName.new(NsV7, "PollGenerateReportResponse"),
    :schema_element => [
      ["reportRequestStatus", ["ReportRequestStatus", XSD::QName.new(NsV7, "ReportRequestStatus")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportRequestStatus,
    :schema_name => XSD::QName.new(NsV7, "ReportRequestStatus"),
    :schema_element => [
      ["reportDownloadUrl", ["SOAP::SOAPString", XSD::QName.new(NsV7, "ReportDownloadUrl")], [0, 1]],
      ["status", ["ReportRequestStatusType", XSD::QName.new(NsV7, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportRequestStatusType,
    :schema_name => XSD::QName.new(NsV7, "ReportRequestStatusType")
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
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
    :class => AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
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
end
