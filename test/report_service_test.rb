$: << File.expand_path(File.dirname(__FILE__))
require 'test_helper'
require 'adcenter_client'
require 'date'

class ReportingServiceTest < Test::Unit::TestCase
  def setup
    # $DEBUG = true
    # assert_sandboxed(TEST_CREDENTIALS)
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, false)
    @svc = @acc.reporting_service
  end

  def test_get_keyword_performance_report
    report_date = Date.today - 1
    report_format = "Csv"
    report_language = 'English'
    report_name = sprintf("Keyword Performance Report - %s", report_date.strftime("%Y-%m-%d"))
    report_complete_data_only_flag = false
    report_aggregation = 'Summary'
    report_columns = %w[ AccountName Keyword KeywordId CurrentMaxCpc Impressions Clicks Spend AveragePosition AverageCpm ]
    report_filter = nil
    report_scope = AccountReportScope.new
    report_time = ReportTime.new(report_date, report_date)
    
    kprr = KeywordPerformanceReportRequest.new(report_format, report_language,
      report_name, report_complete_data_only_flag, report_aggregation,
      report_columns, report_filter, report_scope, report_time)
    report_request = SubmitGenerateReportRequest.new(kprr)
    res = @svc.submitGenerateReport(report_request)
    assert_equal SubmitGenerateReportResponse, res.class
    assert res.reportRequestId
  end
end
