#!/usr/bin/env ruby
require 'SecureDataManagementServiceDriver.rb'

endpoint_url = ARGV.shift
obj = ISecureDataManagementService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   AddPaymentMethod(parameters)
#
# ARGS
#   parameters      AddPaymentMethodRequest - {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodRequest
#
# RETURNS
#   parameters      AddPaymentMethodResponse - {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.addPaymentMethod(parameters)


