#! /usr/bin/env ruby
$: << File.expand_path(File.dirname(__FILE__) + "/../lib/")

require 'optparse'
require 'yaml'
require 'adcenter_client'

$DEBUG = false

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: get_adcenter_account_info.rb [options]"
  opts.on("-u", "--username=LOGIN", "API account username") do |v|
    options[:username] = v.to_s
  end
  opts.on("-p", "--password=PASSWORD", "API account password") do |v|
    options[:password] = v.to_s
  end
  opts.on("-t", "--token=DEVTOKEN", "API account developer token") do |v|
    options[:token] = v.to_s
  end
  opts.on("-c", "--customerid=n", "API account customer id") do |v|
    options[:customerid] = v.to_i.to_s
  end
  opts.on("-a", "--accountid=n", "API account customer account id") do |v|
    options[:accountid] = v.to_i.to_s
  end
end.parse!

credentials = {
  'UserName' => options[:username],
  'Password' => options[:password],
  'ApplicationToken' => '',
  'DeveloperToken' => options[:token],
  'CustomerId' => options[:customerid],
  'CustomerAccountId' => options[:accountid] || ""
}

@acc = AdCenterClient.new(credentials, nil, false)
@svc = @acc.customer_management_service
@entities = @acc.entities

req = @entities::GetAccountsInfoRequest.new(credentials[:customerid])
res = @svc.getAccountsInfo(req)
puts res.to_yaml
