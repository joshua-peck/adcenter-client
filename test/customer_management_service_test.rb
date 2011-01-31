$: << File.expand_path(File.dirname(__FILE__))
require 'test_helper'
require 'adcenter_client'

class CustomerManagementServiceTest < Test::Unit::TestCase
  def setup
    # $DEBUG = true
    # assert_sandboxed(TEST_CREDENTIALS)
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, false)
    @svc = @acc.customer_management_service
    @entities = @acc.entities
  end

  def test_get_accounts_info
    req = @entities::GetAccountsInfoRequest.new(TEST_CREDENTIALS['CustomerId'].to_s)
    res = @svc.getAccountsInfo(req)
    assert_equal @entities::GetAccountsInfoResponse, res.class
    assert res.accountsInfo
  end
end
