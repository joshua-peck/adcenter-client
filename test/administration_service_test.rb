$: << File.expand_path(File.dirname(__FILE__))
require 'test_helper'
require 'adcenter_client'

class AdministrationServiceTest < Test::Unit::TestCase
  def setup
    $DEBUG = true
    assert_sandboxed(TEST_CREDENTIALS)
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, false)
    @svc = @acc.administration_service
  end

  def test_get_assigned_quota
    req = GetAssignedQuotaRequest.new
    res = @acc.administration_service.getAssignedQuota(req)
    assert_equal GetAssignedQuotaResponse, res.class
    assert res.assignedQuota
  end
end
