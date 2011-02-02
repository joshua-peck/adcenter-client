module Test::Unit::Assertions
  # asserts that we a using sandbox credentials.  Useful for destructive testing.
  def assert_sandboxed(creds)
    assert_match(/SBX/, creds['UserName'], "you appear to be running with production credentials [#{creds.inspect()}]")
  end
end
