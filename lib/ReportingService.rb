require 'xsd/qname'

# {https://adcenter.microsoft.com/v7}ReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
class ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
  end
end

# {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfAdDynamicTextPerformanceReportColumn
#   filter - AdDynamicTextPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class AdDynamicTextPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}KeywordPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfKeywordPerformanceReportColumn
#   filter - KeywordPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class KeywordPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfDestinationUrlPerformanceReportColumn
#   filter - DestinationUrlPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class DestinationUrlPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}TacticChannelReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfTacticChannelReportColumn
#   filter - TacticChannelReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class TacticChannelReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}AccountPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfAccountPerformanceReportColumn
#   filter - AccountPerformanceReportFilter
#   scope - AccountReportScope
#   time - ReportTime
class AccountPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}CampaignPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfCampaignPerformanceReportColumn
#   filter - CampaignPerformanceReportFilter
#   scope - AccountThroughCampaignReportScope
#   time - ReportTime
class CampaignPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfAdGroupPerformanceReportColumn
#   filter - AdGroupPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class AdGroupPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}AdPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfAdPerformanceReportColumn
#   filter - AdPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class AdPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}BudgetSummaryReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   columns - ArrayOfBudgetSummaryReportColumn
#   scope - AccountReportScope
#   time - BudgetSummaryReportTime
class BudgetSummaryReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :columns
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, columns = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @columns = columns
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfAgeGenderDemographicReportColumn
#   filter - AgeGenderDemographicReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class AgeGenderDemographicReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfMetroAreaDemographicReportColumn
#   filter - MetroAreaDemographicReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class MetroAreaDemographicReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfPublisherUsagePerformanceReportColumn
#   filter - PublisherUsagePerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class PublisherUsagePerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}SitePerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfSitePerformanceReportColumn
#   filter - SitePerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class SitePerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}BehavioralTargetReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfBehavioralTargetReportColumn
#   filter - BehavioralTargetReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class BehavioralTargetReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - ReportAggregation
#   columns - ArrayOfBehavioralPerformanceReportColumn
#   filter - BehavioralPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class BehavioralPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - SearchQueryReportAggregation
#   columns - ArrayOfSearchQueryPerformanceReportColumn
#   filter - SearchQueryPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class SearchQueryPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}ConversionPerformanceReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfConversionPerformanceReportColumn
#   filter - ConversionPerformanceReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class ConversionPerformanceReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfGoalsAndFunnelsReportColumn
#   filter - GoalsAndFunnelsReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class GoalsAndFunnelsReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}TrafficSourcesReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfTrafficSourcesReportColumn
#   filter - TrafficSourcesReportFilter
#   scope - AccountReportScope
#   time - ReportTime
class TrafficSourcesReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}SegmentationReportRequest
#   format - ReportFormat
#   language - ReportLanguage
#   reportName - SOAP::SOAPString
#   returnOnlyCompleteData - SOAP::SOAPBoolean
#   aggregation - NonHourlyReportAggregation
#   columns - ArrayOfSegmentationReportColumn
#   filter - SegmentationReportFilter
#   scope - AccountThroughAdGroupReportScope
#   time - ReportTime
class SegmentationReportRequest < ReportRequest
  attr_accessor :format
  attr_accessor :language
  attr_accessor :reportName
  attr_accessor :returnOnlyCompleteData
  attr_accessor :aggregation
  attr_accessor :columns
  attr_accessor :filter
  attr_accessor :scope
  attr_accessor :time

  def initialize(format = nil, language = nil, reportName = nil, returnOnlyCompleteData = nil, aggregation = nil, columns = nil, filter = nil, scope = nil, time = nil)
    @format = format
    @language = language
    @reportName = reportName
    @returnOnlyCompleteData = returnOnlyCompleteData
    @aggregation = aggregation
    @columns = columns
    @filter = filter
    @scope = scope
    @time = time
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdDynamicTextPerformanceReportColumn
class ArrayOfAdDynamicTextPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportFilter
#   adDistribution - (any)
#   adType - (any)
#   languageAndRegion - (any)
class AdDynamicTextPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :adType
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, adType = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @adType = adType
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}AccountThroughAdGroupReportScope
#   accountIds - ArrayOflong
#   adGroups - ArrayOfAdGroupReportScope
#   campaigns - ArrayOfCampaignReportScope
class AccountThroughAdGroupReportScope
  attr_accessor :accountIds
  attr_accessor :adGroups
  attr_accessor :campaigns

  def initialize(accountIds = nil, adGroups = nil, campaigns = nil)
    @accountIds = accountIds
    @adGroups = adGroups
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdGroupReportScope
class ArrayOfAdGroupReportScope < ::Array
end

# {https://adcenter.microsoft.com/v7}AdGroupReportScope
#   parentAccountId - SOAP::SOAPLong
#   parentCampaignId - SOAP::SOAPLong
#   adGroupId - SOAP::SOAPLong
class AdGroupReportScope
  attr_accessor :parentAccountId
  attr_accessor :parentCampaignId
  attr_accessor :adGroupId

  def initialize(parentAccountId = nil, parentCampaignId = nil, adGroupId = nil)
    @parentAccountId = parentAccountId
    @parentCampaignId = parentCampaignId
    @adGroupId = adGroupId
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCampaignReportScope
class ArrayOfCampaignReportScope < ::Array
end

# {https://adcenter.microsoft.com/v7}CampaignReportScope
#   parentAccountId - SOAP::SOAPLong
#   campaignId - SOAP::SOAPLong
class CampaignReportScope
  attr_accessor :parentAccountId
  attr_accessor :campaignId

  def initialize(parentAccountId = nil, campaignId = nil)
    @parentAccountId = parentAccountId
    @campaignId = campaignId
  end
end

# {https://adcenter.microsoft.com/v7}ReportTime
#   customDateRangeEnd - Date
#   customDateRangeStart - Date
#   predefinedTime - ReportTimePeriod
class ReportTime
  attr_accessor :customDateRangeEnd
  attr_accessor :customDateRangeStart
  attr_accessor :predefinedTime

  def initialize(customDateRangeEnd = nil, customDateRangeStart = nil, predefinedTime = nil)
    @customDateRangeEnd = customDateRangeEnd
    @customDateRangeStart = customDateRangeStart
    @predefinedTime = predefinedTime
  end
end

# {https://adcenter.microsoft.com/v7}Date
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

# {https://adcenter.microsoft.com/v7}ArrayOfKeywordPerformanceReportColumn
class ArrayOfKeywordPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}KeywordPerformanceReportFilter
#   adDistribution - (any)
#   adType - (any)
#   bidMatchType - (any)
#   cashback - (any)
#   deliveredMatchType - (any)
#   keywords - ArrayOfstring
#   languageAndRegion - (any)
class KeywordPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :adType
  attr_accessor :bidMatchType
  attr_accessor :cashback
  attr_accessor :deliveredMatchType
  attr_accessor :keywords
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, adType = nil, bidMatchType = nil, cashback = nil, deliveredMatchType = nil, keywords = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @adType = adType
    @bidMatchType = bidMatchType
    @cashback = cashback
    @deliveredMatchType = deliveredMatchType
    @keywords = keywords
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfDestinationUrlPerformanceReportColumn
class ArrayOfDestinationUrlPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportFilter
#   adDistribution - (any)
#   languageAndRegion - (any)
class DestinationUrlPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfTacticChannelReportColumn
class ArrayOfTacticChannelReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}TacticChannelReportFilter
#   channelIds - ArrayOflong
#   tacticIds - ArrayOflong
#   thirdPartyAdGroupIds - ArrayOflong
#   thirdPartyCampaignIds - ArrayOflong
class TacticChannelReportFilter
  attr_accessor :channelIds
  attr_accessor :tacticIds
  attr_accessor :thirdPartyAdGroupIds
  attr_accessor :thirdPartyCampaignIds

  def initialize(channelIds = nil, tacticIds = nil, thirdPartyAdGroupIds = nil, thirdPartyCampaignIds = nil)
    @channelIds = channelIds
    @tacticIds = tacticIds
    @thirdPartyAdGroupIds = thirdPartyAdGroupIds
    @thirdPartyCampaignIds = thirdPartyCampaignIds
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAccountPerformanceReportColumn
class ArrayOfAccountPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}AccountPerformanceReportFilter
#   adDistribution - (any)
#   deviceType - (any)
class AccountPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :deviceType

  def initialize(adDistribution = nil, deviceType = nil)
    @adDistribution = adDistribution
    @deviceType = deviceType
  end
end

# {https://adcenter.microsoft.com/v7}AccountReportScope
#   accountIds - ArrayOflong
class AccountReportScope
  attr_accessor :accountIds

  def initialize(accountIds = nil)
    @accountIds = accountIds
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfCampaignPerformanceReportColumn
class ArrayOfCampaignPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}CampaignPerformanceReportFilter
#   adDistribution - (any)
#   deviceType - (any)
#   status - (any)
class CampaignPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :deviceType
  attr_accessor :status

  def initialize(adDistribution = nil, deviceType = nil, status = nil)
    @adDistribution = adDistribution
    @deviceType = deviceType
    @status = status
  end
end

# {https://adcenter.microsoft.com/v7}AccountThroughCampaignReportScope
#   accountIds - ArrayOflong
#   campaigns - ArrayOfCampaignReportScope
class AccountThroughCampaignReportScope
  attr_accessor :accountIds
  attr_accessor :campaigns

  def initialize(accountIds = nil, campaigns = nil)
    @accountIds = accountIds
    @campaigns = campaigns
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdGroupPerformanceReportColumn
class ArrayOfAdGroupPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportFilter
#   adDistribution - (any)
#   deviceType - (any)
#   languageAndRegion - (any)
#   status - (any)
class AdGroupPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :deviceType
  attr_accessor :languageAndRegion
  attr_accessor :status

  def initialize(adDistribution = nil, deviceType = nil, languageAndRegion = nil, status = nil)
    @adDistribution = adDistribution
    @deviceType = deviceType
    @languageAndRegion = languageAndRegion
    @status = status
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAdPerformanceReportColumn
class ArrayOfAdPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}AdPerformanceReportFilter
#   adDistribution - (any)
#   adType - (any)
#   languageAndRegion - (any)
class AdPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :adType
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, adType = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @adType = adType
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBudgetSummaryReportColumn
class ArrayOfBudgetSummaryReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}BudgetSummaryReportTime
#   customDateRangeEnd - Date
#   customDateRangeStart - Date
#   predefinedTime - BudgetSummaryReportTimePeriod
class BudgetSummaryReportTime
  attr_accessor :customDateRangeEnd
  attr_accessor :customDateRangeStart
  attr_accessor :predefinedTime

  def initialize(customDateRangeEnd = nil, customDateRangeStart = nil, predefinedTime = nil)
    @customDateRangeEnd = customDateRangeEnd
    @customDateRangeStart = customDateRangeStart
    @predefinedTime = predefinedTime
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfAgeGenderDemographicReportColumn
class ArrayOfAgeGenderDemographicReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportFilter
#   adDistribution - (any)
#   languageAndRegion - (any)
class AgeGenderDemographicReportFilter
  attr_accessor :adDistribution
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfMetroAreaDemographicReportColumn
class ArrayOfMetroAreaDemographicReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportFilter
#   adDistribution - (any)
#   country - (any)
#   languageAndRegion - (any)
class MetroAreaDemographicReportFilter
  attr_accessor :adDistribution
  attr_accessor :country
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, country = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @country = country
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfPublisherUsagePerformanceReportColumn
class ArrayOfPublisherUsagePerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportFilter
#   adDistribution - (any)
#   languageAndRegion - (any)
class PublisherUsagePerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfSitePerformanceReportColumn
class ArrayOfSitePerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}SitePerformanceReportFilter
#   adDistribution - (any)
#   adType - (any)
#   deliveredMatchType - (any)
#   languageAndRegion - (any)
#   siteIds - ArrayOflong
class SitePerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :adType
  attr_accessor :deliveredMatchType
  attr_accessor :languageAndRegion
  attr_accessor :siteIds

  def initialize(adDistribution = nil, adType = nil, deliveredMatchType = nil, languageAndRegion = nil, siteIds = nil)
    @adDistribution = adDistribution
    @adType = adType
    @deliveredMatchType = deliveredMatchType
    @languageAndRegion = languageAndRegion
    @siteIds = siteIds
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBehavioralTargetReportColumn
class ArrayOfBehavioralTargetReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}BehavioralTargetReportFilter
#   adDistribution - (any)
#   behavioralIds - ArrayOflong
#   languageAndRegion - (any)
class BehavioralTargetReportFilter
  attr_accessor :adDistribution
  attr_accessor :behavioralIds
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, behavioralIds = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @behavioralIds = behavioralIds
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfBehavioralPerformanceReportColumn
class ArrayOfBehavioralPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportFilter
#   adDistribution - (any)
#   adType - (any)
#   behavioralIds - ArrayOflong
#   deliveredMatchType - (any)
#   languageAndRegion - (any)
class BehavioralPerformanceReportFilter
  attr_accessor :adDistribution
  attr_accessor :adType
  attr_accessor :behavioralIds
  attr_accessor :deliveredMatchType
  attr_accessor :languageAndRegion

  def initialize(adDistribution = nil, adType = nil, behavioralIds = nil, deliveredMatchType = nil, languageAndRegion = nil)
    @adDistribution = adDistribution
    @adType = adType
    @behavioralIds = behavioralIds
    @deliveredMatchType = deliveredMatchType
    @languageAndRegion = languageAndRegion
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfSearchQueryPerformanceReportColumn
class ArrayOfSearchQueryPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportFilter
#   adStatus - (any)
#   adType - (any)
#   campaignStatus - (any)
#   deliveredMatchType - (any)
#   languageAndRegion - (any)
#   searchQueries - ArrayOfstring
class SearchQueryPerformanceReportFilter
  attr_accessor :adStatus
  attr_accessor :adType
  attr_accessor :campaignStatus
  attr_accessor :deliveredMatchType
  attr_accessor :languageAndRegion
  attr_accessor :searchQueries

  def initialize(adStatus = nil, adType = nil, campaignStatus = nil, deliveredMatchType = nil, languageAndRegion = nil, searchQueries = nil)
    @adStatus = adStatus
    @adType = adType
    @campaignStatus = campaignStatus
    @deliveredMatchType = deliveredMatchType
    @languageAndRegion = languageAndRegion
    @searchQueries = searchQueries
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfConversionPerformanceReportColumn
class ArrayOfConversionPerformanceReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}ConversionPerformanceReportFilter
#   keywords - ArrayOfstring
class ConversionPerformanceReportFilter
  attr_accessor :keywords

  def initialize(keywords = nil)
    @keywords = keywords
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfGoalsAndFunnelsReportColumn
class ArrayOfGoalsAndFunnelsReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportFilter
#   goalIds - ArrayOflong
class GoalsAndFunnelsReportFilter
  attr_accessor :goalIds

  def initialize(goalIds = nil)
    @goalIds = goalIds
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfTrafficSourcesReportColumn
class ArrayOfTrafficSourcesReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}TrafficSourcesReportFilter
#   goalIds - ArrayOflong
class TrafficSourcesReportFilter
  attr_accessor :goalIds

  def initialize(goalIds = nil)
    @goalIds = goalIds
  end
end

# {https://adcenter.microsoft.com/v7}ArrayOfSegmentationReportColumn
class ArrayOfSegmentationReportColumn < ::Array
end

# {https://adcenter.microsoft.com/v7}SegmentationReportFilter
#   ageGroup - (any)
#   country - (any)
#   gender - (any)
#   goalIds - ArrayOflong
#   keywords - ArrayOfstring
class SegmentationReportFilter
  attr_accessor :ageGroup
  attr_accessor :country
  attr_accessor :gender
  attr_accessor :goalIds
  attr_accessor :keywords

  def initialize(ageGroup = nil, country = nil, gender = nil, goalIds = nil, keywords = nil)
    @ageGroup = ageGroup
    @country = country
    @gender = gender
    @goalIds = goalIds
    @keywords = keywords
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

# {https://adcenter.microsoft.com/v7}ReportRequestStatus
#   reportDownloadUrl - SOAP::SOAPString
#   status - ReportRequestStatusType
class ReportRequestStatus
  attr_accessor :reportDownloadUrl
  attr_accessor :status

  def initialize(reportDownloadUrl = nil, status = nil)
    @reportDownloadUrl = reportDownloadUrl
    @status = status
  end
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

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

# {https://adapi.microsoft.com}AdApiFaultDetail
#   trackingId - SOAP::SOAPString
#   errors - ArrayOfAdApiError
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

# {https://adcenter.microsoft.com/v7}ReportFormat
class ReportFormat < ::String
  Csv = ReportFormat.new("Csv")
  Tsv = ReportFormat.new("Tsv")
  Xml = ReportFormat.new("Xml")
end

# {https://adcenter.microsoft.com/v7}ReportLanguage
class ReportLanguage < ::String
  English = ReportLanguage.new("English")
  French = ReportLanguage.new("French")
end

# {https://adcenter.microsoft.com/v7}NonHourlyReportAggregation
class NonHourlyReportAggregation < ::String
  Daily = NonHourlyReportAggregation.new("Daily")
  Monthly = NonHourlyReportAggregation.new("Monthly")
  Summary = NonHourlyReportAggregation.new("Summary")
  Weekly = NonHourlyReportAggregation.new("Weekly")
  Yearly = NonHourlyReportAggregation.new("Yearly")
end

# {https://adcenter.microsoft.com/v7}AdDynamicTextPerformanceReportColumn
class AdDynamicTextPerformanceReportColumn < ::String
  AccountName = AdDynamicTextPerformanceReportColumn.new("AccountName")
  AccountNumber = AdDynamicTextPerformanceReportColumn.new("AccountNumber")
  AdDistribution = AdDynamicTextPerformanceReportColumn.new("AdDistribution")
  AdGroupId = AdDynamicTextPerformanceReportColumn.new("AdGroupId")
  AdGroupName = AdDynamicTextPerformanceReportColumn.new("AdGroupName")
  AdId = AdDynamicTextPerformanceReportColumn.new("AdId")
  AdTitle = AdDynamicTextPerformanceReportColumn.new("AdTitle")
  AdType = AdDynamicTextPerformanceReportColumn.new("AdType")
  AverageCpc = AdDynamicTextPerformanceReportColumn.new("AverageCpc")
  AverageCpm = AdDynamicTextPerformanceReportColumn.new("AverageCpm")
  AveragePosition = AdDynamicTextPerformanceReportColumn.new("AveragePosition")
  Clicks = AdDynamicTextPerformanceReportColumn.new("Clicks")
  ConversionRate = AdDynamicTextPerformanceReportColumn.new("ConversionRate")
  Conversions = AdDynamicTextPerformanceReportColumn.new("Conversions")
  CostPerConversion = AdDynamicTextPerformanceReportColumn.new("CostPerConversion")
  Ctr = AdDynamicTextPerformanceReportColumn.new("Ctr")
  CurrencyCode = AdDynamicTextPerformanceReportColumn.new("CurrencyCode")
  DestinationUrl = AdDynamicTextPerformanceReportColumn.new("DestinationUrl")
  Impressions = AdDynamicTextPerformanceReportColumn.new("Impressions")
  Keyword = AdDynamicTextPerformanceReportColumn.new("Keyword")
  LanguageAndRegion = AdDynamicTextPerformanceReportColumn.new("LanguageAndRegion")
  Param1 = AdDynamicTextPerformanceReportColumn.new("Param1")
  Param2 = AdDynamicTextPerformanceReportColumn.new("Param2")
  Param3 = AdDynamicTextPerformanceReportColumn.new("Param3")
  PricingModel = AdDynamicTextPerformanceReportColumn.new("PricingModel")
  Spend = AdDynamicTextPerformanceReportColumn.new("Spend")
  TimePeriod = AdDynamicTextPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}AdDistributionReportFilter
#   contains list of AdDistributionReportFilter::*
class AdDistributionReportFilter < ::Array
  Content = "Content"
  Search = "Search"
end

# {https://adcenter.microsoft.com/v7}AdTypeReportFilter
#   contains list of AdTypeReportFilter::*
class AdTypeReportFilter < ::Array
  Image = "Image"
  Mobile = "Mobile"
  RichMedia = "RichMedia"
  Text = "Text"
  ThirdPartyCreative = "ThirdPartyCreative"
end

# {https://adcenter.microsoft.com/v7}LanguageAndRegionReportFilter
#   contains list of LanguageAndRegionReportFilter::*
class LanguageAndRegionReportFilter < ::Array
  EnglishCanada = "EnglishCanada"
  France = "France"
  FrenchCanada = "FrenchCanada"
  Singapore = "Singapore"
  UnitedKingdom = "UnitedKingdom"
  UnitedStates = "UnitedStates"
end

# {https://adcenter.microsoft.com/v7}ReportTimePeriod
class ReportTimePeriod < ::String
  LastFourWeeks = ReportTimePeriod.new("LastFourWeeks")
  LastMonth = ReportTimePeriod.new("LastMonth")
  LastSevenDays = ReportTimePeriod.new("LastSevenDays")
  LastSixMonths = ReportTimePeriod.new("LastSixMonths")
  LastThreeMonths = ReportTimePeriod.new("LastThreeMonths")
  LastWeek = ReportTimePeriod.new("LastWeek")
  LastYear = ReportTimePeriod.new("LastYear")
  ThisMonth = ReportTimePeriod.new("ThisMonth")
  ThisWeek = ReportTimePeriod.new("ThisWeek")
  ThisYear = ReportTimePeriod.new("ThisYear")
  Today = ReportTimePeriod.new("Today")
  Yesterday = ReportTimePeriod.new("Yesterday")
end

# {https://adcenter.microsoft.com/v7}ReportAggregation
class ReportAggregation < ::String
  Daily = ReportAggregation.new("Daily")
  Hourly = ReportAggregation.new("Hourly")
  Monthly = ReportAggregation.new("Monthly")
  Summary = ReportAggregation.new("Summary")
  Weekly = ReportAggregation.new("Weekly")
  Yearly = ReportAggregation.new("Yearly")
end

# {https://adcenter.microsoft.com/v7}KeywordPerformanceReportColumn
class KeywordPerformanceReportColumn < ::String
  AccountId = KeywordPerformanceReportColumn.new("AccountId")
  AccountName = KeywordPerformanceReportColumn.new("AccountName")
  AccountNumber = KeywordPerformanceReportColumn.new("AccountNumber")
  AdDistribution = KeywordPerformanceReportColumn.new("AdDistribution")
  AdGroupId = KeywordPerformanceReportColumn.new("AdGroupId")
  AdGroupName = KeywordPerformanceReportColumn.new("AdGroupName")
  AdId = KeywordPerformanceReportColumn.new("AdId")
  AdType = KeywordPerformanceReportColumn.new("AdType")
  AverageCpc = KeywordPerformanceReportColumn.new("AverageCpc")
  AverageCpm = KeywordPerformanceReportColumn.new("AverageCpm")
  AveragePosition = KeywordPerformanceReportColumn.new("AveragePosition")
  BidMatchType = KeywordPerformanceReportColumn.new("BidMatchType")
  CampaignId = KeywordPerformanceReportColumn.new("CampaignId")
  CampaignName = KeywordPerformanceReportColumn.new("CampaignName")
  Cashback = KeywordPerformanceReportColumn.new("Cashback")
  Clicks = KeywordPerformanceReportColumn.new("Clicks")
  ConversionRate = KeywordPerformanceReportColumn.new("ConversionRate")
  Conversions = KeywordPerformanceReportColumn.new("Conversions")
  CostPerConversion = KeywordPerformanceReportColumn.new("CostPerConversion")
  Ctr = KeywordPerformanceReportColumn.new("Ctr")
  CurrencyCode = KeywordPerformanceReportColumn.new("CurrencyCode")
  CurrentMaxCpc = KeywordPerformanceReportColumn.new("CurrentMaxCpc")
  DestinationUrl = KeywordPerformanceReportColumn.new("DestinationUrl")
  Impressions = KeywordPerformanceReportColumn.new("Impressions")
  Keyword = KeywordPerformanceReportColumn.new("Keyword")
  KeywordId = KeywordPerformanceReportColumn.new("KeywordId")
  LanguageAndRegion = KeywordPerformanceReportColumn.new("LanguageAndRegion")
  MatchType = KeywordPerformanceReportColumn.new("MatchType")
  PricingModel = KeywordPerformanceReportColumn.new("PricingModel")
  Spend = KeywordPerformanceReportColumn.new("Spend")
  TimePeriod = KeywordPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}BidMatchTypeReportFilter
#   contains list of BidMatchTypeReportFilter::*
class BidMatchTypeReportFilter < ::Array
  Broad = "Broad"
  Content = "Content"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adcenter.microsoft.com/v7}CashbackReportFilter
#   contains list of CashbackReportFilter::*
class CashbackReportFilter < ::Array
  Enabled = "Enabled"
  NotEnabled = "NotEnabled"
end

# {https://adcenter.microsoft.com/v7}DeliveredMatchTypeReportFilter
#   contains list of DeliveredMatchTypeReportFilter::*
class DeliveredMatchTypeReportFilter < ::Array
  Broad = "Broad"
  Content = "Content"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adcenter.microsoft.com/v7}DestinationUrlPerformanceReportColumn
class DestinationUrlPerformanceReportColumn < ::String
  AccountName = DestinationUrlPerformanceReportColumn.new("AccountName")
  AccountNumber = DestinationUrlPerformanceReportColumn.new("AccountNumber")
  AdDistribution = DestinationUrlPerformanceReportColumn.new("AdDistribution")
  AdGroupId = DestinationUrlPerformanceReportColumn.new("AdGroupId")
  AdGroupName = DestinationUrlPerformanceReportColumn.new("AdGroupName")
  AdId = DestinationUrlPerformanceReportColumn.new("AdId")
  AverageCpc = DestinationUrlPerformanceReportColumn.new("AverageCpc")
  AverageCpm = DestinationUrlPerformanceReportColumn.new("AverageCpm")
  AveragePosition = DestinationUrlPerformanceReportColumn.new("AveragePosition")
  CampaignId = DestinationUrlPerformanceReportColumn.new("CampaignId")
  CampaignName = DestinationUrlPerformanceReportColumn.new("CampaignName")
  Clicks = DestinationUrlPerformanceReportColumn.new("Clicks")
  ConversionRate = DestinationUrlPerformanceReportColumn.new("ConversionRate")
  Conversions = DestinationUrlPerformanceReportColumn.new("Conversions")
  CostPerConversion = DestinationUrlPerformanceReportColumn.new("CostPerConversion")
  Ctr = DestinationUrlPerformanceReportColumn.new("Ctr")
  CurrencyCode = DestinationUrlPerformanceReportColumn.new("CurrencyCode")
  DestinationUrl = DestinationUrlPerformanceReportColumn.new("DestinationUrl")
  Impressions = DestinationUrlPerformanceReportColumn.new("Impressions")
  LanguageAndRegion = DestinationUrlPerformanceReportColumn.new("LanguageAndRegion")
  PricingModel = DestinationUrlPerformanceReportColumn.new("PricingModel")
  Spend = DestinationUrlPerformanceReportColumn.new("Spend")
  TimePeriod = DestinationUrlPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}TacticChannelReportColumn
class TacticChannelReportColumn < ::String
  AccountId = TacticChannelReportColumn.new("AccountId")
  AccountName = TacticChannelReportColumn.new("AccountName")
  AccountNumber = TacticChannelReportColumn.new("AccountNumber")
  AdGroupId = TacticChannelReportColumn.new("AdGroupId")
  AdGroupName = TacticChannelReportColumn.new("AdGroupName")
  Assists = TacticChannelReportColumn.new("Assists")
  CampaignId = TacticChannelReportColumn.new("CampaignId")
  CampaignName = TacticChannelReportColumn.new("CampaignName")
  Channel = TacticChannelReportColumn.new("Channel")
  Conversions = TacticChannelReportColumn.new("Conversions")
  FunnelConversionRate = TacticChannelReportColumn.new("FunnelConversionRate")
  Goal = TacticChannelReportColumn.new("Goal")
  Keyword = TacticChannelReportColumn.new("Keyword")
  KeywordId = TacticChannelReportColumn.new("KeywordId")
  ReturnOnAdSpend = TacticChannelReportColumn.new("ReturnOnAdSpend")
  Revenue = TacticChannelReportColumn.new("Revenue")
  Spend = TacticChannelReportColumn.new("Spend")
  Step1Count = TacticChannelReportColumn.new("Step1Count")
  Step2Count = TacticChannelReportColumn.new("Step2Count")
  Step3Count = TacticChannelReportColumn.new("Step3Count")
  Step4Count = TacticChannelReportColumn.new("Step4Count")
  Step5Count = TacticChannelReportColumn.new("Step5Count")
  Tactic = TacticChannelReportColumn.new("Tactic")
  ThirdPartyAdGroup = TacticChannelReportColumn.new("ThirdPartyAdGroup")
  ThirdPartyCampaign = TacticChannelReportColumn.new("ThirdPartyCampaign")
  ThirdPartyTerm = TacticChannelReportColumn.new("ThirdPartyTerm")
  TimePeriod = TacticChannelReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}AccountPerformanceReportColumn
class AccountPerformanceReportColumn < ::String
  AccountName = AccountPerformanceReportColumn.new("AccountName")
  AccountNumber = AccountPerformanceReportColumn.new("AccountNumber")
  AdDistribution = AccountPerformanceReportColumn.new("AdDistribution")
  AverageCpc = AccountPerformanceReportColumn.new("AverageCpc")
  AverageCpm = AccountPerformanceReportColumn.new("AverageCpm")
  AveragePosition = AccountPerformanceReportColumn.new("AveragePosition")
  Clicks = AccountPerformanceReportColumn.new("Clicks")
  ConversionRate = AccountPerformanceReportColumn.new("ConversionRate")
  Conversions = AccountPerformanceReportColumn.new("Conversions")
  CostPerConversion = AccountPerformanceReportColumn.new("CostPerConversion")
  Ctr = AccountPerformanceReportColumn.new("Ctr")
  CurrencyCode = AccountPerformanceReportColumn.new("CurrencyCode")
  DeviceType = AccountPerformanceReportColumn.new("DeviceType")
  Impressions = AccountPerformanceReportColumn.new("Impressions")
  LowQualityClicks = AccountPerformanceReportColumn.new("LowQualityClicks")
  LowQualityClicksPercent = AccountPerformanceReportColumn.new("LowQualityClicksPercent")
  LowQualityConversionRate = AccountPerformanceReportColumn.new("LowQualityConversionRate")
  LowQualityConversions = AccountPerformanceReportColumn.new("LowQualityConversions")
  LowQualityImpressions = AccountPerformanceReportColumn.new("LowQualityImpressions")
  LowQualityImpressionsPercent = AccountPerformanceReportColumn.new("LowQualityImpressionsPercent")
  Spend = AccountPerformanceReportColumn.new("Spend")
  TimePeriod = AccountPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}DeviceTypeReportFilter
#   contains list of DeviceTypeReportFilter::*
class DeviceTypeReportFilter < ::Array
  Computer = "Computer"
  NonSmartPhone = "NonSmartPhone"
  SmartPhone = "SmartPhone"
end

# {https://adcenter.microsoft.com/v7}CampaignPerformanceReportColumn
class CampaignPerformanceReportColumn < ::String
  AccountName = CampaignPerformanceReportColumn.new("AccountName")
  AccountNumber = CampaignPerformanceReportColumn.new("AccountNumber")
  AdDistribution = CampaignPerformanceReportColumn.new("AdDistribution")
  AverageCpc = CampaignPerformanceReportColumn.new("AverageCpc")
  AverageCpm = CampaignPerformanceReportColumn.new("AverageCpm")
  AveragePosition = CampaignPerformanceReportColumn.new("AveragePosition")
  CampaignId = CampaignPerformanceReportColumn.new("CampaignId")
  CampaignName = CampaignPerformanceReportColumn.new("CampaignName")
  Clicks = CampaignPerformanceReportColumn.new("Clicks")
  ConversionRate = CampaignPerformanceReportColumn.new("ConversionRate")
  Conversions = CampaignPerformanceReportColumn.new("Conversions")
  CostPerConversion = CampaignPerformanceReportColumn.new("CostPerConversion")
  Ctr = CampaignPerformanceReportColumn.new("Ctr")
  CurrencyCode = CampaignPerformanceReportColumn.new("CurrencyCode")
  DeviceType = CampaignPerformanceReportColumn.new("DeviceType")
  Impressions = CampaignPerformanceReportColumn.new("Impressions")
  LowQualityClicks = CampaignPerformanceReportColumn.new("LowQualityClicks")
  LowQualityClicksPercent = CampaignPerformanceReportColumn.new("LowQualityClicksPercent")
  LowQualityConversionRate = CampaignPerformanceReportColumn.new("LowQualityConversionRate")
  LowQualityConversions = CampaignPerformanceReportColumn.new("LowQualityConversions")
  LowQualityImpressions = CampaignPerformanceReportColumn.new("LowQualityImpressions")
  LowQualityImpressionsPercent = CampaignPerformanceReportColumn.new("LowQualityImpressionsPercent")
  Spend = CampaignPerformanceReportColumn.new("Spend")
  Status = CampaignPerformanceReportColumn.new("Status")
  TimePeriod = CampaignPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}CampaignStatusReportFilter
#   contains list of CampaignStatusReportFilter::*
class CampaignStatusReportFilter < ::Array
  Active = "Active"
  BudgetPaused = "BudgetPaused"
  Cancelled = "Cancelled"
  Deleted = "Deleted"
  Paused = "Paused"
  Submitted = "Submitted"
end

# {https://adcenter.microsoft.com/v7}AdGroupPerformanceReportColumn
class AdGroupPerformanceReportColumn < ::String
  AccountName = AdGroupPerformanceReportColumn.new("AccountName")
  AccountNumber = AdGroupPerformanceReportColumn.new("AccountNumber")
  AdDistribution = AdGroupPerformanceReportColumn.new("AdDistribution")
  AdGroupId = AdGroupPerformanceReportColumn.new("AdGroupId")
  AdGroupName = AdGroupPerformanceReportColumn.new("AdGroupName")
  AverageCpc = AdGroupPerformanceReportColumn.new("AverageCpc")
  AverageCpm = AdGroupPerformanceReportColumn.new("AverageCpm")
  AveragePosition = AdGroupPerformanceReportColumn.new("AveragePosition")
  CampaignId = AdGroupPerformanceReportColumn.new("CampaignId")
  CampaignName = AdGroupPerformanceReportColumn.new("CampaignName")
  Clicks = AdGroupPerformanceReportColumn.new("Clicks")
  ConversionRate = AdGroupPerformanceReportColumn.new("ConversionRate")
  Conversions = AdGroupPerformanceReportColumn.new("Conversions")
  CostPerConversion = AdGroupPerformanceReportColumn.new("CostPerConversion")
  Ctr = AdGroupPerformanceReportColumn.new("Ctr")
  CurrencyCode = AdGroupPerformanceReportColumn.new("CurrencyCode")
  DeviceType = AdGroupPerformanceReportColumn.new("DeviceType")
  Impressions = AdGroupPerformanceReportColumn.new("Impressions")
  LanguageAndRegion = AdGroupPerformanceReportColumn.new("LanguageAndRegion")
  PricingModel = AdGroupPerformanceReportColumn.new("PricingModel")
  Spend = AdGroupPerformanceReportColumn.new("Spend")
  Status = AdGroupPerformanceReportColumn.new("Status")
  TimePeriod = AdGroupPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}AdGroupStatusReportFilter
#   contains list of AdGroupStatusReportFilter::*
class AdGroupStatusReportFilter < ::Array
  Active = "Active"
  Deleted = "Deleted"
  Draft = "Draft"
  Expired = "Expired"
  Paused = "Paused"
  Submitted = "Submitted"
end

# {https://adcenter.microsoft.com/v7}AdPerformanceReportColumn
class AdPerformanceReportColumn < ::String
  AccountName = AdPerformanceReportColumn.new("AccountName")
  AccountNumber = AdPerformanceReportColumn.new("AccountNumber")
  AdDescription = AdPerformanceReportColumn.new("AdDescription")
  AdDistribution = AdPerformanceReportColumn.new("AdDistribution")
  AdGroupId = AdPerformanceReportColumn.new("AdGroupId")
  AdGroupName = AdPerformanceReportColumn.new("AdGroupName")
  AdId = AdPerformanceReportColumn.new("AdId")
  AdTitle = AdPerformanceReportColumn.new("AdTitle")
  AdType = AdPerformanceReportColumn.new("AdType")
  AverageCpc = AdPerformanceReportColumn.new("AverageCpc")
  AverageCpm = AdPerformanceReportColumn.new("AverageCpm")
  AveragePosition = AdPerformanceReportColumn.new("AveragePosition")
  CampaignName = AdPerformanceReportColumn.new("CampaignName")
  Clicks = AdPerformanceReportColumn.new("Clicks")
  ConversionRate = AdPerformanceReportColumn.new("ConversionRate")
  Conversions = AdPerformanceReportColumn.new("Conversions")
  CostPerConversion = AdPerformanceReportColumn.new("CostPerConversion")
  Ctr = AdPerformanceReportColumn.new("Ctr")
  CurrencyCode = AdPerformanceReportColumn.new("CurrencyCode")
  DestinationUrl = AdPerformanceReportColumn.new("DestinationUrl")
  Impressions = AdPerformanceReportColumn.new("Impressions")
  LanguageAndRegion = AdPerformanceReportColumn.new("LanguageAndRegion")
  PricingModel = AdPerformanceReportColumn.new("PricingModel")
  Spend = AdPerformanceReportColumn.new("Spend")
  TimePeriod = AdPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}BudgetSummaryReportColumn
class BudgetSummaryReportColumn < ::String
  AccountName = BudgetSummaryReportColumn.new("AccountName")
  AccountNumber = BudgetSummaryReportColumn.new("AccountNumber")
  CampaignName = BudgetSummaryReportColumn.new("CampaignName")
  CurrencyCode = BudgetSummaryReportColumn.new("CurrencyCode")
  DailySpend = BudgetSummaryReportColumn.new("DailySpend")
  Date = BudgetSummaryReportColumn.new("Date")
  MonthToDateSpend = BudgetSummaryReportColumn.new("MonthToDateSpend")
  MonthlyBudget = BudgetSummaryReportColumn.new("MonthlyBudget")
  ParticipationRate = BudgetSummaryReportColumn.new("ParticipationRate")
end

# {https://adcenter.microsoft.com/v7}BudgetSummaryReportTimePeriod
class BudgetSummaryReportTimePeriod < ::String
  LastMonth = BudgetSummaryReportTimePeriod.new("LastMonth")
  LastSevenDays = BudgetSummaryReportTimePeriod.new("LastSevenDays")
  ThisMonth = BudgetSummaryReportTimePeriod.new("ThisMonth")
  Today = BudgetSummaryReportTimePeriod.new("Today")
  Yesterday = BudgetSummaryReportTimePeriod.new("Yesterday")
end

# {https://adcenter.microsoft.com/v7}AgeGenderDemographicReportColumn
class AgeGenderDemographicReportColumn < ::String
  AccountName = AgeGenderDemographicReportColumn.new("AccountName")
  AccountNumber = AgeGenderDemographicReportColumn.new("AccountNumber")
  AdDistribution = AgeGenderDemographicReportColumn.new("AdDistribution")
  AdGroupName = AgeGenderDemographicReportColumn.new("AdGroupName")
  AgeGroup = AgeGenderDemographicReportColumn.new("AgeGroup")
  CampaignName = AgeGenderDemographicReportColumn.new("CampaignName")
  EstimatedClickPercent = AgeGenderDemographicReportColumn.new("EstimatedClickPercent")
  EstimatedCtr = AgeGenderDemographicReportColumn.new("EstimatedCtr")
  EstimatedImpressionPercent = AgeGenderDemographicReportColumn.new("EstimatedImpressionPercent")
  Gender = AgeGenderDemographicReportColumn.new("Gender")
  LanguageAndRegion = AgeGenderDemographicReportColumn.new("LanguageAndRegion")
  TimePeriod = AgeGenderDemographicReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}MetroAreaDemographicReportColumn
class MetroAreaDemographicReportColumn < ::String
  AccountName = MetroAreaDemographicReportColumn.new("AccountName")
  AccountNumber = MetroAreaDemographicReportColumn.new("AccountNumber")
  AdDistribution = MetroAreaDemographicReportColumn.new("AdDistribution")
  AdGroupName = MetroAreaDemographicReportColumn.new("AdGroupName")
  AverageCpc = MetroAreaDemographicReportColumn.new("AverageCpc")
  AverageCpm = MetroAreaDemographicReportColumn.new("AverageCpm")
  AveragePosition = MetroAreaDemographicReportColumn.new("AveragePosition")
  CampaignName = MetroAreaDemographicReportColumn.new("CampaignName")
  Clicks = MetroAreaDemographicReportColumn.new("Clicks")
  Country = MetroAreaDemographicReportColumn.new("Country")
  Ctr = MetroAreaDemographicReportColumn.new("Ctr")
  CurrencyCode = MetroAreaDemographicReportColumn.new("CurrencyCode")
  Impressions = MetroAreaDemographicReportColumn.new("Impressions")
  LanguageAndRegion = MetroAreaDemographicReportColumn.new("LanguageAndRegion")
  MetroArea = MetroAreaDemographicReportColumn.new("MetroArea")
  Spend = MetroAreaDemographicReportColumn.new("Spend")
  State = MetroAreaDemographicReportColumn.new("State")
  TimePeriod = MetroAreaDemographicReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}CountryReportFilter
#   contains list of CountryReportFilter::*
class CountryReportFilter < ::Array
  Canada = "Canada"
  France = "France"
  Singapore = "Singapore"
  UnitedKingdom = "UnitedKingdom"
  UnitedStates = "UnitedStates"
end

# {https://adcenter.microsoft.com/v7}PublisherUsagePerformanceReportColumn
class PublisherUsagePerformanceReportColumn < ::String
  AccountId = PublisherUsagePerformanceReportColumn.new("AccountId")
  AccountName = PublisherUsagePerformanceReportColumn.new("AccountName")
  AccountNumber = PublisherUsagePerformanceReportColumn.new("AccountNumber")
  AdDistribution = PublisherUsagePerformanceReportColumn.new("AdDistribution")
  AdGroupId = PublisherUsagePerformanceReportColumn.new("AdGroupId")
  AdGroupName = PublisherUsagePerformanceReportColumn.new("AdGroupName")
  AverageCpc = PublisherUsagePerformanceReportColumn.new("AverageCpc")
  AverageCpm = PublisherUsagePerformanceReportColumn.new("AverageCpm")
  AveragePosition = PublisherUsagePerformanceReportColumn.new("AveragePosition")
  CampaignId = PublisherUsagePerformanceReportColumn.new("CampaignId")
  CampaignName = PublisherUsagePerformanceReportColumn.new("CampaignName")
  Clicks = PublisherUsagePerformanceReportColumn.new("Clicks")
  ConversionRate = PublisherUsagePerformanceReportColumn.new("ConversionRate")
  Conversions = PublisherUsagePerformanceReportColumn.new("Conversions")
  CostPerConversion = PublisherUsagePerformanceReportColumn.new("CostPerConversion")
  Ctr = PublisherUsagePerformanceReportColumn.new("Ctr")
  CurrencyCode = PublisherUsagePerformanceReportColumn.new("CurrencyCode")
  Impressions = PublisherUsagePerformanceReportColumn.new("Impressions")
  LanguageAndRegion = PublisherUsagePerformanceReportColumn.new("LanguageAndRegion")
  PricingModel = PublisherUsagePerformanceReportColumn.new("PricingModel")
  PublisherUrl = PublisherUsagePerformanceReportColumn.new("PublisherUrl")
  Spend = PublisherUsagePerformanceReportColumn.new("Spend")
  TimePeriod = PublisherUsagePerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}SitePerformanceReportColumn
class SitePerformanceReportColumn < ::String
  AccountId = SitePerformanceReportColumn.new("AccountId")
  AccountName = SitePerformanceReportColumn.new("AccountName")
  AccountNumber = SitePerformanceReportColumn.new("AccountNumber")
  AdDistribution = SitePerformanceReportColumn.new("AdDistribution")
  AdGroupId = SitePerformanceReportColumn.new("AdGroupId")
  AdGroupName = SitePerformanceReportColumn.new("AdGroupName")
  AdId = SitePerformanceReportColumn.new("AdId")
  AdType = SitePerformanceReportColumn.new("AdType")
  AverageCpc = SitePerformanceReportColumn.new("AverageCpc")
  AverageCpm = SitePerformanceReportColumn.new("AverageCpm")
  AveragePosition = SitePerformanceReportColumn.new("AveragePosition")
  CampaignId = SitePerformanceReportColumn.new("CampaignId")
  CampaignName = SitePerformanceReportColumn.new("CampaignName")
  Clicks = SitePerformanceReportColumn.new("Clicks")
  ConversionRate = SitePerformanceReportColumn.new("ConversionRate")
  Conversions = SitePerformanceReportColumn.new("Conversions")
  CostPerConversion = SitePerformanceReportColumn.new("CostPerConversion")
  Ctr = SitePerformanceReportColumn.new("Ctr")
  CurrencyCode = SitePerformanceReportColumn.new("CurrencyCode")
  CurrentMaxCpc = SitePerformanceReportColumn.new("CurrentMaxCpc")
  DestinationUrl = SitePerformanceReportColumn.new("DestinationUrl")
  Impressions = SitePerformanceReportColumn.new("Impressions")
  LanguageAndRegion = SitePerformanceReportColumn.new("LanguageAndRegion")
  MatchType = SitePerformanceReportColumn.new("MatchType")
  PricingModel = SitePerformanceReportColumn.new("PricingModel")
  Site = SitePerformanceReportColumn.new("Site")
  SiteId = SitePerformanceReportColumn.new("SiteId")
  Spend = SitePerformanceReportColumn.new("Spend")
  TimePeriod = SitePerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}BehavioralTargetReportColumn
class BehavioralTargetReportColumn < ::String
  AccountId = BehavioralTargetReportColumn.new("AccountId")
  AccountName = BehavioralTargetReportColumn.new("AccountName")
  AccountNumber = BehavioralTargetReportColumn.new("AccountNumber")
  AdDistribution = BehavioralTargetReportColumn.new("AdDistribution")
  AdGroupId = BehavioralTargetReportColumn.new("AdGroupId")
  AdGroupName = BehavioralTargetReportColumn.new("AdGroupName")
  AverageCpc = BehavioralTargetReportColumn.new("AverageCpc")
  AverageCpm = BehavioralTargetReportColumn.new("AverageCpm")
  AveragePosition = BehavioralTargetReportColumn.new("AveragePosition")
  BehavioralId = BehavioralTargetReportColumn.new("BehavioralId")
  CampaignId = BehavioralTargetReportColumn.new("CampaignId")
  CampaignName = BehavioralTargetReportColumn.new("CampaignName")
  Clicks = BehavioralTargetReportColumn.new("Clicks")
  Ctr = BehavioralTargetReportColumn.new("Ctr")
  CurrencyCode = BehavioralTargetReportColumn.new("CurrencyCode")
  Impressions = BehavioralTargetReportColumn.new("Impressions")
  LanguageAndRegion = BehavioralTargetReportColumn.new("LanguageAndRegion")
  PricingModel = BehavioralTargetReportColumn.new("PricingModel")
  Spend = BehavioralTargetReportColumn.new("Spend")
  TimePeriod = BehavioralTargetReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}BehavioralPerformanceReportColumn
class BehavioralPerformanceReportColumn < ::String
  AccountId = BehavioralPerformanceReportColumn.new("AccountId")
  AccountName = BehavioralPerformanceReportColumn.new("AccountName")
  AccountNumber = BehavioralPerformanceReportColumn.new("AccountNumber")
  AdDistribution = BehavioralPerformanceReportColumn.new("AdDistribution")
  AdGroupId = BehavioralPerformanceReportColumn.new("AdGroupId")
  AdGroupName = BehavioralPerformanceReportColumn.new("AdGroupName")
  AdId = BehavioralPerformanceReportColumn.new("AdId")
  AdType = BehavioralPerformanceReportColumn.new("AdType")
  AverageCpc = BehavioralPerformanceReportColumn.new("AverageCpc")
  AverageCpm = BehavioralPerformanceReportColumn.new("AverageCpm")
  AveragePosition = BehavioralPerformanceReportColumn.new("AveragePosition")
  BehavioralId = BehavioralPerformanceReportColumn.new("BehavioralId")
  BehavioralName = BehavioralPerformanceReportColumn.new("BehavioralName")
  CampaignId = BehavioralPerformanceReportColumn.new("CampaignId")
  CampaignName = BehavioralPerformanceReportColumn.new("CampaignName")
  Clicks = BehavioralPerformanceReportColumn.new("Clicks")
  ConversionRate = BehavioralPerformanceReportColumn.new("ConversionRate")
  Conversions = BehavioralPerformanceReportColumn.new("Conversions")
  CostPerConversion = BehavioralPerformanceReportColumn.new("CostPerConversion")
  Ctr = BehavioralPerformanceReportColumn.new("Ctr")
  CurrencyCode = BehavioralPerformanceReportColumn.new("CurrencyCode")
  CurrentMaxCpc = BehavioralPerformanceReportColumn.new("CurrentMaxCpc")
  DestinationUrl = BehavioralPerformanceReportColumn.new("DestinationUrl")
  Impressions = BehavioralPerformanceReportColumn.new("Impressions")
  LanguageAndRegion = BehavioralPerformanceReportColumn.new("LanguageAndRegion")
  MatchType = BehavioralPerformanceReportColumn.new("MatchType")
  PricingModel = BehavioralPerformanceReportColumn.new("PricingModel")
  Spend = BehavioralPerformanceReportColumn.new("Spend")
  TimePeriod = BehavioralPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}SearchQueryReportAggregation
class SearchQueryReportAggregation < ::String
  Daily = SearchQueryReportAggregation.new("Daily")
  Hourly = SearchQueryReportAggregation.new("Hourly")
  Monthly = SearchQueryReportAggregation.new("Monthly")
  Summary = SearchQueryReportAggregation.new("Summary")
  Weekly = SearchQueryReportAggregation.new("Weekly")
end

# {https://adcenter.microsoft.com/v7}SearchQueryPerformanceReportColumn
class SearchQueryPerformanceReportColumn < ::String
  AccountId = SearchQueryPerformanceReportColumn.new("AccountId")
  AccountName = SearchQueryPerformanceReportColumn.new("AccountName")
  AccountNumber = SearchQueryPerformanceReportColumn.new("AccountNumber")
  AdGroupId = SearchQueryPerformanceReportColumn.new("AdGroupId")
  AdGroupName = SearchQueryPerformanceReportColumn.new("AdGroupName")
  AdId = SearchQueryPerformanceReportColumn.new("AdId")
  AdStatus = SearchQueryPerformanceReportColumn.new("AdStatus")
  AdType = SearchQueryPerformanceReportColumn.new("AdType")
  AverageCpc = SearchQueryPerformanceReportColumn.new("AverageCpc")
  AveragePosition = SearchQueryPerformanceReportColumn.new("AveragePosition")
  CampaignId = SearchQueryPerformanceReportColumn.new("CampaignId")
  CampaignName = SearchQueryPerformanceReportColumn.new("CampaignName")
  CampaignStatus = SearchQueryPerformanceReportColumn.new("CampaignStatus")
  Clicks = SearchQueryPerformanceReportColumn.new("Clicks")
  Ctr = SearchQueryPerformanceReportColumn.new("Ctr")
  DestinationUrl = SearchQueryPerformanceReportColumn.new("DestinationUrl")
  Impressions = SearchQueryPerformanceReportColumn.new("Impressions")
  LanguageAndRegion = SearchQueryPerformanceReportColumn.new("LanguageAndRegion")
  MatchType = SearchQueryPerformanceReportColumn.new("MatchType")
  SearchQuery = SearchQueryPerformanceReportColumn.new("SearchQuery")
  Spend = SearchQueryPerformanceReportColumn.new("Spend")
  TimePeriod = SearchQueryPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}AdStatusReportFilter
#   contains list of AdStatusReportFilter::*
class AdStatusReportFilter < ::Array
  Active = "Active"
  Deleted = "Deleted"
  Pending = "Pending"
  Rejected = "Rejected"
  Submitted = "Submitted"
end

# {https://adcenter.microsoft.com/v7}ConversionPerformanceReportColumn
class ConversionPerformanceReportColumn < ::String
  AccountId = ConversionPerformanceReportColumn.new("AccountId")
  AccountName = ConversionPerformanceReportColumn.new("AccountName")
  AccountNumber = ConversionPerformanceReportColumn.new("AccountNumber")
  AdGroupId = ConversionPerformanceReportColumn.new("AdGroupId")
  AdGroupName = ConversionPerformanceReportColumn.new("AdGroupName")
  Assists = ConversionPerformanceReportColumn.new("Assists")
  CampaignId = ConversionPerformanceReportColumn.new("CampaignId")
  CampaignName = ConversionPerformanceReportColumn.new("CampaignName")
  Clicks = ConversionPerformanceReportColumn.new("Clicks")
  ConversionRate = ConversionPerformanceReportColumn.new("ConversionRate")
  Conversions = ConversionPerformanceReportColumn.new("Conversions")
  CostPerAssist = ConversionPerformanceReportColumn.new("CostPerAssist")
  CostPerConversion = ConversionPerformanceReportColumn.new("CostPerConversion")
  Ctr = ConversionPerformanceReportColumn.new("Ctr")
  ExtendedCost = ConversionPerformanceReportColumn.new("ExtendedCost")
  Impressions = ConversionPerformanceReportColumn.new("Impressions")
  Keyword = ConversionPerformanceReportColumn.new("Keyword")
  KeywordId = ConversionPerformanceReportColumn.new("KeywordId")
  ReturnOnAdSpend = ConversionPerformanceReportColumn.new("ReturnOnAdSpend")
  Revenue = ConversionPerformanceReportColumn.new("Revenue")
  RevenuePerAssist = ConversionPerformanceReportColumn.new("RevenuePerAssist")
  RevenuePerConversion = ConversionPerformanceReportColumn.new("RevenuePerConversion")
  Spend = ConversionPerformanceReportColumn.new("Spend")
  TimePeriod = ConversionPerformanceReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}GoalsAndFunnelsReportColumn
class GoalsAndFunnelsReportColumn < ::String
  AccountId = GoalsAndFunnelsReportColumn.new("AccountId")
  AccountName = GoalsAndFunnelsReportColumn.new("AccountName")
  AccountNumber = GoalsAndFunnelsReportColumn.new("AccountNumber")
  AdGroupId = GoalsAndFunnelsReportColumn.new("AdGroupId")
  AdGroupName = GoalsAndFunnelsReportColumn.new("AdGroupName")
  Assists = GoalsAndFunnelsReportColumn.new("Assists")
  CampaignId = GoalsAndFunnelsReportColumn.new("CampaignId")
  CampaignName = GoalsAndFunnelsReportColumn.new("CampaignName")
  Conversions = GoalsAndFunnelsReportColumn.new("Conversions")
  ExtendedCost = GoalsAndFunnelsReportColumn.new("ExtendedCost")
  FunnelConversionRate = GoalsAndFunnelsReportColumn.new("FunnelConversionRate")
  Goal = GoalsAndFunnelsReportColumn.new("Goal")
  Keyword = GoalsAndFunnelsReportColumn.new("Keyword")
  KeywordId = GoalsAndFunnelsReportColumn.new("KeywordId")
  ReturnOnAdSpend = GoalsAndFunnelsReportColumn.new("ReturnOnAdSpend")
  Revenue = GoalsAndFunnelsReportColumn.new("Revenue")
  Spend = GoalsAndFunnelsReportColumn.new("Spend")
  Step1Count = GoalsAndFunnelsReportColumn.new("Step1Count")
  Step2Count = GoalsAndFunnelsReportColumn.new("Step2Count")
  Step3Count = GoalsAndFunnelsReportColumn.new("Step3Count")
  Step4Count = GoalsAndFunnelsReportColumn.new("Step4Count")
  Step5Count = GoalsAndFunnelsReportColumn.new("Step5Count")
  TimePeriod = GoalsAndFunnelsReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}TrafficSourcesReportColumn
class TrafficSourcesReportColumn < ::String
  AccountId = TrafficSourcesReportColumn.new("AccountId")
  AccountName = TrafficSourcesReportColumn.new("AccountName")
  AccountNumber = TrafficSourcesReportColumn.new("AccountNumber")
  Assists = TrafficSourcesReportColumn.new("Assists")
  Conversions = TrafficSourcesReportColumn.new("Conversions")
  FunnelConversionRate = TrafficSourcesReportColumn.new("FunnelConversionRate")
  Goal = TrafficSourcesReportColumn.new("Goal")
  Revenue = TrafficSourcesReportColumn.new("Revenue")
  RevenuePerConversion = TrafficSourcesReportColumn.new("RevenuePerConversion")
  Source = TrafficSourcesReportColumn.new("Source")
  Step1Count = TrafficSourcesReportColumn.new("Step1Count")
  Step2Count = TrafficSourcesReportColumn.new("Step2Count")
  Step3Count = TrafficSourcesReportColumn.new("Step3Count")
  Step4Count = TrafficSourcesReportColumn.new("Step4Count")
  Step5Count = TrafficSourcesReportColumn.new("Step5Count")
  TimePeriod = TrafficSourcesReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}SegmentationReportColumn
class SegmentationReportColumn < ::String
  AccountId = SegmentationReportColumn.new("AccountId")
  AccountName = SegmentationReportColumn.new("AccountName")
  AccountNumber = SegmentationReportColumn.new("AccountNumber")
  AdGroupId = SegmentationReportColumn.new("AdGroupId")
  AdGroupName = SegmentationReportColumn.new("AdGroupName")
  AgeGroup = SegmentationReportColumn.new("AgeGroup")
  Assists = SegmentationReportColumn.new("Assists")
  CampaignId = SegmentationReportColumn.new("CampaignId")
  CampaignName = SegmentationReportColumn.new("CampaignName")
  Conversions = SegmentationReportColumn.new("Conversions")
  Country = SegmentationReportColumn.new("Country")
  FunnelConversionRate = SegmentationReportColumn.new("FunnelConversionRate")
  Gender = SegmentationReportColumn.new("Gender")
  Goal = SegmentationReportColumn.new("Goal")
  Keyword = SegmentationReportColumn.new("Keyword")
  KeywordId = SegmentationReportColumn.new("KeywordId")
  MetroArea = SegmentationReportColumn.new("MetroArea")
  ReturnOnAdSpend = SegmentationReportColumn.new("ReturnOnAdSpend")
  Revenue = SegmentationReportColumn.new("Revenue")
  Spend = SegmentationReportColumn.new("Spend")
  State = SegmentationReportColumn.new("State")
  Step1Count = SegmentationReportColumn.new("Step1Count")
  Step2Count = SegmentationReportColumn.new("Step2Count")
  Step3Count = SegmentationReportColumn.new("Step3Count")
  Step4Count = SegmentationReportColumn.new("Step4Count")
  Step5Count = SegmentationReportColumn.new("Step5Count")
  TimePeriod = SegmentationReportColumn.new("TimePeriod")
end

# {https://adcenter.microsoft.com/v7}AgeGroupReportFilter
#   contains list of AgeGroupReportFilter::*
class AgeGroupReportFilter < ::Array
  Ages0to12 = "Ages0to12"
  Ages13to17 = "Ages13to17"
  Ages18to24 = "Ages18to24"
  Ages25to34 = "Ages25to34"
  Ages35to49 = "Ages35to49"
  Ages50to64 = "Ages50to64"
  Ages65plus = "Ages65plus"
  Unknown = "Unknown"
end

# {https://adcenter.microsoft.com/v7}GenderReportFilter
#   contains list of GenderReportFilter::*
class GenderReportFilter < ::Array
  Female = "Female"
  Male = "Male"
  Unknown = "Unknown"
end

# {https://adcenter.microsoft.com/v7}ReportRequestStatusType
class ReportRequestStatusType < ::String
  Error = ReportRequestStatusType.new("Error")
  Pending = ReportRequestStatusType.new("Pending")
  Success = ReportRequestStatusType.new("Success")
end

# {https://adcenter.microsoft.com/v7}SubmitGenerateReportRequest
#   reportRequest - ReportRequest
class SubmitGenerateReportRequest
  attr_accessor :reportRequest

  def initialize(reportRequest = nil)
    @reportRequest = reportRequest
  end
end

# {https://adcenter.microsoft.com/v7}SubmitGenerateReportResponse
#   reportRequestId - SOAP::SOAPString
class SubmitGenerateReportResponse
  attr_accessor :reportRequestId

  def initialize(reportRequestId = nil)
    @reportRequestId = reportRequestId
  end
end

# {https://adcenter.microsoft.com/v7}PollGenerateReportRequest
#   reportRequestId - SOAP::SOAPString
class PollGenerateReportRequest
  attr_accessor :reportRequestId

  def initialize(reportRequestId = nil)
    @reportRequestId = reportRequestId
  end
end

# {https://adcenter.microsoft.com/v7}PollGenerateReportResponse
#   reportRequestStatus - ReportRequestStatus
class PollGenerateReportResponse
  attr_accessor :reportRequestStatus

  def initialize(reportRequestStatus = nil)
    @reportRequestStatus = reportRequestStatus
  end
end
