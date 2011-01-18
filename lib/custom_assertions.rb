module Test::Unit::Assertions
  def assert_sandboxed(creds)
    assert_match(/SBX/, creds['UserName'], "you appear to be running with production credentials [#{creds.inspect()}]")
  end
end
