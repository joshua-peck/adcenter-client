$: << File.expand_path(File.join(File.dirname(__FILE__), '..'))

require 'test/test_helper'
require 'adcenter_client'

class AdCenterClientTest < Test::Unit::TestCase
  def setup
    @acc = AdCenterClient.new(TEST_CREDENTIALS, nil, true)
  end

  def test_init
    assert(@acc)
  end
end