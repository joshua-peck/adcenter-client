#!/usr/bin/env ruby
require 'CustomerManagementServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = ICustomerManagementService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetAccountsInfo(parameters)
#
# ARGS
#   parameters      GetAccountsInfoRequest - {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoRequest
#
# RETURNS
#   parameters      GetAccountsInfoResponse - {https://adcenter.microsoft.com/api/customermanagement}GetAccountsInfoResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getAccountsInfo(parameters)

# SYNOPSIS
#   FindAccounts(parameters)
#
# ARGS
#   parameters      FindAccountsRequest - {https://adcenter.microsoft.com/api/customermanagement}FindAccountsRequest
#
# RETURNS
#   parameters      FindAccountsResponse - {https://adcenter.microsoft.com/api/customermanagement}FindAccountsResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.findAccounts(parameters)

# SYNOPSIS
#   AddAccount(parameters)
#
# ARGS
#   parameters      AddAccountRequest - {https://adcenter.microsoft.com/api/customermanagement}AddAccountRequest
#
# RETURNS
#   parameters      AddAccountResponse - {https://adcenter.microsoft.com/api/customermanagement}AddAccountResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.addAccount(parameters)

# SYNOPSIS
#   UpdateAccount(parameters)
#
# ARGS
#   parameters      UpdateAccountRequest - {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountRequest
#
# RETURNS
#   parameters      UpdateAccountResponse - {https://adcenter.microsoft.com/api/customermanagement}UpdateAccountResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.updateAccount(parameters)

# SYNOPSIS
#   GetCustomer(parameters)
#
# ARGS
#   parameters      GetCustomerRequest - {https://adcenter.microsoft.com/api/customermanagement}GetCustomerRequest
#
# RETURNS
#   parameters      GetCustomerResponse - {https://adcenter.microsoft.com/api/customermanagement}GetCustomerResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getCustomer(parameters)

# SYNOPSIS
#   UpdateCustomer(parameters)
#
# ARGS
#   parameters      UpdateCustomerRequest - {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerRequest
#
# RETURNS
#   parameters      UpdateCustomerResponse - {https://adcenter.microsoft.com/api/customermanagement}UpdateCustomerResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.updateCustomer(parameters)

# SYNOPSIS
#   SignupCustomer(parameters)
#
# ARGS
#   parameters      SignupCustomerRequest - {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerRequest
#
# RETURNS
#   parameters      SignupCustomerResponse - {https://adcenter.microsoft.com/api/customermanagement}SignupCustomerResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.signupCustomer(parameters)

# SYNOPSIS
#   GetAccount(parameters)
#
# ARGS
#   parameters      GetAccountRequest - {https://adcenter.microsoft.com/api/customermanagement}GetAccountRequest
#
# RETURNS
#   parameters      GetAccountResponse - {https://adcenter.microsoft.com/api/customermanagement}GetAccountResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getAccount(parameters)

# SYNOPSIS
#   GetCustomersInfo(parameters)
#
# ARGS
#   parameters      GetCustomersInfoRequest - {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoRequest
#
# RETURNS
#   parameters      GetCustomersInfoResponse - {https://adcenter.microsoft.com/api/customermanagement}GetCustomersInfoResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getCustomersInfo(parameters)

# SYNOPSIS
#   AddUser(parameters)
#
# ARGS
#   parameters      AddUserRequest - {https://adcenter.microsoft.com/api/customermanagement}AddUserRequest
#
# RETURNS
#   parameters      AddUserResponse - {https://adcenter.microsoft.com/api/customermanagement}AddUserResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.addUser(parameters)

# SYNOPSIS
#   DeleteAccount(parameters)
#
# ARGS
#   parameters      DeleteAccountRequest - {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountRequest
#
# RETURNS
#   parameters      DeleteAccountResponse - {https://adcenter.microsoft.com/api/customermanagement}DeleteAccountResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.deleteAccount(parameters)

# SYNOPSIS
#   DeleteCustomer(parameters)
#
# ARGS
#   parameters      DeleteCustomerRequest - {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerRequest
#
# RETURNS
#   parameters      DeleteCustomerResponse - {https://adcenter.microsoft.com/api/customermanagement}DeleteCustomerResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.deleteCustomer(parameters)

# SYNOPSIS
#   UpdateUser(parameters)
#
# ARGS
#   parameters      UpdateUserRequest - {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRequest
#
# RETURNS
#   parameters      UpdateUserResponse - {https://adcenter.microsoft.com/api/customermanagement}UpdateUserResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.updateUser(parameters)

# SYNOPSIS
#   UpdateUserRoles(parameters)
#
# ARGS
#   parameters      UpdateUserRolesRequest - {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesRequest
#
# RETURNS
#   parameters      UpdateUserRolesResponse - {https://adcenter.microsoft.com/api/customermanagement}UpdateUserRolesResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.updateUserRoles(parameters)

# SYNOPSIS
#   GetUser(parameters)
#
# ARGS
#   parameters      GetUserRequest - {https://adcenter.microsoft.com/api/customermanagement}GetUserRequest
#
# RETURNS
#   parameters      GetUserResponse - {https://adcenter.microsoft.com/api/customermanagement}GetUserResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getUser(parameters)

# SYNOPSIS
#   GetCurrentUser(parameters)
#
# ARGS
#   parameters      GetCurrentUserRequest - {https://adcenter.microsoft.com/api/customermanagement}GetCurrentUserRequest
#
# RETURNS
#   parameters      GetCurrentUserResponse - {https://adcenter.microsoft.com/api/customermanagement}GetCurrentUserResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getCurrentUser(parameters)

# SYNOPSIS
#   DeleteUser(parameters)
#
# ARGS
#   parameters      DeleteUserRequest - {https://adcenter.microsoft.com/api/customermanagement}DeleteUserRequest
#
# RETURNS
#   parameters      DeleteUserResponse - {https://adcenter.microsoft.com/api/customermanagement}DeleteUserResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.deleteUser(parameters)

# SYNOPSIS
#   GetUsersInfo(parameters)
#
# ARGS
#   parameters      GetUsersInfoRequest - {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoRequest
#
# RETURNS
#   parameters      GetUsersInfoResponse - {https://adcenter.microsoft.com/api/customermanagement}GetUsersInfoResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getUsersInfo(parameters)

# SYNOPSIS
#   GetCustomerPilotFeature(parameters)
#
# ARGS
#   parameters      GetCustomerPilotFeatureRequest - {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureRequest
#
# RETURNS
#   parameters      GetCustomerPilotFeatureResponse - {https://adcenter.microsoft.com/api/customermanagement}GetCustomerPilotFeatureResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getCustomerPilotFeature(parameters)

# SYNOPSIS
#   GetPilotFeaturesCountries(parameters)
#
# ARGS
#   parameters      GetPilotFeaturesCountriesRequest - {https://adcenter.microsoft.com/api/customermanagement}GetPilotFeaturesCountriesRequest
#
# RETURNS
#   parameters      GetPilotFeaturesCountriesResponse - {https://adcenter.microsoft.com/api/customermanagement}GetPilotFeaturesCountriesResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getPilotFeaturesCountries(parameters)

# SYNOPSIS
#   GetAccessibleCustomer(parameters)
#
# ARGS
#   parameters      GetAccessibleCustomerRequest - {https://adcenter.microsoft.com/api/customermanagement}GetAccessibleCustomerRequest
#
# RETURNS
#   parameters      GetAccessibleCustomerResponse - {https://adcenter.microsoft.com/api/customermanagement}GetAccessibleCustomerResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getAccessibleCustomer(parameters)

# SYNOPSIS
#   FindAccountsOrCustomersInfo(parameters)
#
# ARGS
#   parameters      FindAccountsOrCustomersInfoRequest - {https://adcenter.microsoft.com/api/customermanagement}FindAccountsOrCustomersInfoRequest
#
# RETURNS
#   parameters      FindAccountsOrCustomersInfoResponse - {https://adcenter.microsoft.com/api/customermanagement}FindAccountsOrCustomersInfoResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.findAccountsOrCustomersInfo(parameters)




end
