#! /usr/bin/env ruby

require 'optparse'
require 'yaml'

DEFAULT_DESTINATION_DIR = File.expand_path(File.dirname(__FILE__) + '/../lib/')
DEFAULT_WSDL_FILE = File.expand_path(File.dirname(__FILE__) + '/wsdl.yml')

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: gen_drivers.rb [options]"
  opts.on("-d", "--destination=DIRECTORY", "destination directory for generated files") do |v|
    options[:destination_dir] = File.expand_path(v)
  end
  opts.on("-w", "--wsdl=FILE", "file containing WSDL endpoints in YAML") do |v|
    options[:wsdl_file] = File.expand_path(v)
  end
end.parse!

destination_dir = options[:destination_dir] ? options[:destination_dir].to_s : DEFAULT_DESTINATION_DIR
wsdl_file = options[:wsdl_file] ? options[:wsdl_file].to_s : DEFAULT_WSDL_FILE
wsdls = YAML::load_file(wsdl_file)
wsdls['production'].each do |service, endpoint|
  puts "Working on #{service} [#{endpoint}]..."
  `mkdir -p #{destination_dir} && cd #{destination_dir} && wsdl2ruby.rb --module_path AdCenterWrapper --type client --wsdl '#{endpoint}'`
end
