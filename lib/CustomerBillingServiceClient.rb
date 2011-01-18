#!/usr/bin/env ruby
require 'CustomerBillingServiceDriver.rb'

endpoint_url = ARGV.shift
obj = ICustomerBillingService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetInvoicesInfo(parameters)
#
# ARGS
#   parameters      GetInvoicesInfoRequest - {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoRequest
#
# RETURNS
#   parameters      GetInvoicesInfoResponse - {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiBatchFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#
parameters = nil
puts obj.getInvoicesInfo(parameters)

# SYNOPSIS
#   GetInvoices(parameters)
#
# ARGS
#   parameters      GetInvoicesRequest - {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesRequest
#
# RETURNS
#   parameters      GetInvoicesResponse - {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiBatchFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getInvoices(parameters)

# SYNOPSIS
#   GetDisplayInvoices(parameters)
#
# ARGS
#   parameters      GetDisplayInvoicesRequest - {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesRequest
#
# RETURNS
#   parameters      GetDisplayInvoicesResponse - {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesResponse
#
# RAISES
#   detail          ApiBatchFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getDisplayInvoices(parameters)

# SYNOPSIS
#   AddInsertionOrder(parameters)
#
# ARGS
#   parameters      AddInsertionOrderRequest - {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderRequest
#
# RETURNS
#   parameters      AddInsertionOrderResponse - {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addInsertionOrder(parameters)

# SYNOPSIS
#   UpdateInsertionOrder(parameters)
#
# ARGS
#   parameters      UpdateInsertionOrderRequest - {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderRequest
#
# RETURNS
#   parameters      UpdateInsertionOrderResponse - {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.updateInsertionOrder(parameters)

# SYNOPSIS
#   GetInsertionOrdersByAccount(parameters)
#
# ARGS
#   parameters      GetInsertionOrdersByAccountRequest - {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountRequest
#
# RETURNS
#   parameters      GetInsertionOrdersByAccountResponse - {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getInsertionOrdersByAccount(parameters)

# SYNOPSIS
#   GetKOHIOInvoices(parameters)
#
# ARGS
#   parameters      GetKOHIOInvoicesRequest - {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesRequest
#
# RETURNS
#   parameters      GetKOHIOInvoicesResponse - {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          ApiBatchFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getKOHIOInvoices(parameters)


