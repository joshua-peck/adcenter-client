#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = NotificationManagementSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetNotifications(parameters)
#
# ARGS
#   parameters      GetNotifications - {http://adcenter.microsoft.com/syncapis}GetNotifications
#
# RETURNS
#   parameters      GetNotificationsResponse - {http://adcenter.microsoft.com/syncapis}GetNotificationsResponse
#
parameters = nil
puts obj.getNotifications(parameters)

# SYNOPSIS
#   GetNotificationsByType(parameters)
#
# ARGS
#   parameters      GetNotificationsByType - {http://adcenter.microsoft.com/syncapis}GetNotificationsByType
#
# RETURNS
#   parameters      GetNotificationsByTypeResponse - {http://adcenter.microsoft.com/syncapis}GetNotificationsByTypeResponse
#
parameters = nil
puts obj.getNotificationsByType(parameters)

# SYNOPSIS
#   GetArchivedNotifications(parameters)
#
# ARGS
#   parameters      GetArchivedNotifications - {http://adcenter.microsoft.com/syncapis}GetArchivedNotifications
#
# RETURNS
#   parameters      GetArchivedNotificationsResponse - {http://adcenter.microsoft.com/syncapis}GetArchivedNotificationsResponse
#
parameters = nil
puts obj.getArchivedNotifications(parameters)


endpoint_url = ARGV.shift
obj = NotificationManagementSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetNotifications(parameters)
#
# ARGS
#   parameters      GetNotifications - {http://adcenter.microsoft.com/syncapis}GetNotifications
#
# RETURNS
#   parameters      GetNotificationsResponse - {http://adcenter.microsoft.com/syncapis}GetNotificationsResponse
#
parameters = nil
puts obj.getNotifications(parameters)

# SYNOPSIS
#   GetNotificationsByType(parameters)
#
# ARGS
#   parameters      GetNotificationsByType - {http://adcenter.microsoft.com/syncapis}GetNotificationsByType
#
# RETURNS
#   parameters      GetNotificationsByTypeResponse - {http://adcenter.microsoft.com/syncapis}GetNotificationsByTypeResponse
#
parameters = nil
puts obj.getNotificationsByType(parameters)

# SYNOPSIS
#   GetArchivedNotifications(parameters)
#
# ARGS
#   parameters      GetArchivedNotifications - {http://adcenter.microsoft.com/syncapis}GetArchivedNotifications
#
# RETURNS
#   parameters      GetArchivedNotificationsResponse - {http://adcenter.microsoft.com/syncapis}GetArchivedNotificationsResponse
#
parameters = nil
puts obj.getArchivedNotifications(parameters)


