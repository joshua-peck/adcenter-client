$: << File.expand_path(File.dirname(__FILE__))
$: << File.expand_path(File.dirname(__FILE__) + "/../lib/")
require 'test/unit'
require 'yaml'
require 'custom_assertions'

test_credentials_file = File.expand_path(File.dirname(__FILE__) + "/test_credentials.yml")
TEST_CREDENTIALS = YAML::load_file(test_credentials_file)
