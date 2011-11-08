#!/usr/bin/env ruby
require 'NotificationServiceDriver.rb'


module AdCenterWrapper

endpoint_url = ARGV.shift
obj = INotificationService.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetNotifications(parameters)
#
# ARGS
#   parameters      GetNotificationsRequest - {https://adcenter.microsoft.com/api/notifications}GetNotificationsRequest
#
# RETURNS
#   parameters      GetNotificationsResponse - {https://adcenter.microsoft.com/api/notifications/Entities}GetNotificationsResponse
#
# RAISES
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#
parameters = nil
puts obj.getNotifications(parameters)

# SYNOPSIS
#   GetArchivedNotifications(parameters)
#
# ARGS
#   parameters      GetArchivedNotificationsRequest - {https://adcenter.microsoft.com/api/notifications}GetArchivedNotificationsRequest
#
# RETURNS
#   parameters      GetArchivedNotificationsResponse - {https://adcenter.microsoft.com/api/notifications/Entities}GetArchivedNotificationsResponse
#
# RAISES
#   detail          ApiFault - {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   detail          AdApiFaultDetail - {https://adapi.microsoft.com}AdApiFaultDetail
#
parameters = nil
puts obj.getArchivedNotifications(parameters)




end
