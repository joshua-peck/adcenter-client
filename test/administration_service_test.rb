$: << File.expand_path(File.dirname(__FILE__))
require 'test_helper'
require 'adcenter_client'

class AdministrationServiceTest < Test::Unit::TestCase
  def setup
    $DEBUG = true
    # assert_sandboxed(TEST_CREDENTIALS)
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, false)
    @svc = @acc.administration_service
  end

  def test_get_accounts_info
    @svc = @acc.customer_management_service
    req = GetAccountsInfoRequest.new(TEST_CREDENTIALS['AccountId'].to_s)
    res = @svc.getAccountsInfo(req)
    p res
  end

  def test_get_assigned_quota
    # req = GetAssignedQuotaRequest.new
    # # puts req.methods.sort.to_yaml
    # # req.applicationToken = ""
    # # req.customerId = TEST_CREDENTIALS['CustomerId']
    # # req.customerAccountId = TEST_CREDENTIALS['CustomerAccountId']
    # # req.customerId = TEST_CREDENTIALS['CustomerId']
    # # req.developerToken = TEST_CREDENTIALS['DeveloperToken']
    # # req.password = TEST_CREDENTIALS['Password']
    # # req.userName = TEST_CREDENTIALS['UserName']
    # ret = @acc.administration_service.getAssignedQuota(req)
    # 
    # p ret
    assert false, "Need to write tests"
  end

end
