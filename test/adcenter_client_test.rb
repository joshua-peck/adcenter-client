require 'test/test_helper'
require 'adcenter_client'

class AdCenterClientTest < Test::Unit::TestCase
  def setup
    assert_sandboxed(TEST_CREDENTIALS)
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, true)
  end

  def test_init
    assert(@acc)
  end
  
end