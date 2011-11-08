require 'xsd/qname'

module AdCenterWrapper


# {https://adcenter.microsoft.com/api/notifications/Entities}ArrayOfNotification
class ArrayOfNotification < ::Array
end

# {https://adcenter.microsoft.com/api/notifications/Entities}Notification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
class Notification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}AccountNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
class AccountNotification < Notification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}CreditCardPendingExpirationNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   lastFourDigits - SOAP::SOAPString
#   accountName - SOAP::SOAPString
class CreditCardPendingExpirationNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :cardType
  attr_accessor :lastFourDigits
  attr_accessor :accountName

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil, cardType = nil, lastFourDigits = nil, accountName = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
    @cardType = cardType
    @lastFourDigits = lastFourDigits
    @accountName = accountName
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}ExpiredCreditCardNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   cardType - SOAP::SOAPString
#   lastFourDigits - SOAP::SOAPString
#   accountName - SOAP::SOAPString
class ExpiredCreditCardNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :cardType
  attr_accessor :lastFourDigits
  attr_accessor :accountName

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil, cardType = nil, lastFourDigits = nil, accountName = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
    @cardType = cardType
    @lastFourDigits = lastFourDigits
    @accountName = accountName
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}ExpiredInsertionOrderNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   billToCustomerName - SOAP::SOAPString
class ExpiredInsertionOrderNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :billToCustomerName

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil, billToCustomerName = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
    @billToCustomerName = billToCustomerName
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}BudgetDepletedNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   affectedCampaigns - AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo
#   accountName - SOAP::SOAPString
class BudgetDepletedNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :affectedCampaigns
  attr_accessor :accountName

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil, affectedCampaigns = nil, accountName = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
    @affectedCampaigns = affectedCampaigns
    @accountName = accountName
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}EditorialRejectionNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
class EditorialRejectionNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}LowBudgetBalanceNotification
#   notificationId - SOAP::SOAPLong
#   notificationDate - SOAP::SOAPDateTime
#   notificationType - (any)
#   accountId - SOAP::SOAPLong
#   accountNumber - SOAP::SOAPString
#   customerId - SOAP::SOAPLong
#   affectedCampaigns - AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo
#   accountName - SOAP::SOAPString
class LowBudgetBalanceNotification < AccountNotification
  attr_accessor :notificationId
  attr_accessor :notificationDate
  attr_accessor :notificationType
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :customerId
  attr_accessor :affectedCampaigns
  attr_accessor :accountName

  def initialize(notificationId = nil, notificationDate = nil, notificationType = nil, accountId = nil, accountNumber = nil, customerId = nil, affectedCampaigns = nil, accountName = nil)
    @notificationId = notificationId
    @notificationDate = notificationDate
    @notificationType = notificationType
    @accountId = accountId
    @accountNumber = accountNumber
    @customerId = customerId
    @affectedCampaigns = affectedCampaigns
    @accountName = accountName
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}ArrayOfBudgetDepletedCampaignInfo
class ArrayOfBudgetDepletedCampaignInfo < ::Array
end

# {https://adcenter.microsoft.com/api/notifications/Entities}CampaignInfo
#   campaignId - SOAP::SOAPLong
#   campaignName - SOAP::SOAPString
#   budgetAmount - SOAP::SOAPDouble
class CampaignInfo
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :budgetAmount

  def initialize(campaignId = nil, campaignName = nil, budgetAmount = nil)
    @campaignId = campaignId
    @campaignName = campaignName
    @budgetAmount = budgetAmount
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}BudgetDepletedCampaignInfo
#   campaignId - SOAP::SOAPLong
#   campaignName - SOAP::SOAPString
#   budgetAmount - SOAP::SOAPDouble
#   currencyCode - SOAP::SOAPString
#   budgetDepletedDate - SOAP::SOAPDateTime
class BudgetDepletedCampaignInfo < CampaignInfo
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :budgetAmount
  attr_accessor :currencyCode
  attr_accessor :budgetDepletedDate

  def initialize(campaignId = nil, campaignName = nil, budgetAmount = nil, currencyCode = nil, budgetDepletedDate = nil)
    @campaignId = campaignId
    @campaignName = campaignName
    @budgetAmount = budgetAmount
    @currencyCode = currencyCode
    @budgetDepletedDate = budgetDepletedDate
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}LowBudgetBalanceCampaignInfo
#   campaignId - SOAP::SOAPLong
#   campaignName - SOAP::SOAPString
#   budgetAmount - SOAP::SOAPDouble
#   estimatedBudgetBalance - SOAP::SOAPDouble
#   estimatedImpressions - SOAP::SOAPInt
class LowBudgetBalanceCampaignInfo < CampaignInfo
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :budgetAmount
  attr_accessor :estimatedBudgetBalance
  attr_accessor :estimatedImpressions

  def initialize(campaignId = nil, campaignName = nil, budgetAmount = nil, estimatedBudgetBalance = nil, estimatedImpressions = nil)
    @campaignId = campaignId
    @campaignName = campaignName
    @budgetAmount = budgetAmount
    @estimatedBudgetBalance = estimatedBudgetBalance
    @estimatedImpressions = estimatedImpressions
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}ArrayOfLowBudgetBalanceCampaignInfo
class ArrayOfLowBudgetBalanceCampaignInfo < ::Array
end

# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

# {https://adapi.microsoft.com}AdApiFaultDetail
#   trackingId - SOAP::SOAPString
#   errors - AdCenterWrapper::ArrayOfAdApiError
class AdApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :errors

  def initialize(trackingId = nil, errors = nil)
    @trackingId = trackingId
    @errors = errors
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   trackingId - SOAP::SOAPString
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
class ApiFault < ::StandardError
  attr_accessor :trackingId
  attr_accessor :operationErrors

  def initialize(trackingId = nil, operationErrors = nil)
    @trackingId = trackingId
    @operationErrors = operationErrors
  end
end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# {https://adapi.microsoft.com}AdApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class AdApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
    @code = code
    @detail = detail
    @errorCode = errorCode
    @message = message
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
#   code - SOAP::SOAPInt
#   details - SOAP::SOAPString
#   message - SOAP::SOAPString
class OperationError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :message

  def initialize(code = nil, details = nil, message = nil)
    @code = code
    @details = details
    @message = message
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}NotificationType
#   contains list of NotificationType::*
class NotificationType < ::Array
  CreditCardPendingExpiration = "CreditCardPendingExpiration"
  DepletedBudget = "DepletedBudget"
  EditorialRejection = "EditorialRejection"
  ExpiredCreditCard = "ExpiredCreditCard"
  ExpiredInsertionOrder = "ExpiredInsertionOrder"
  LowBudgetBalance = "LowBudgetBalance"
end

# {https://adcenter.microsoft.com/api/notifications}GetNotificationsRequest
#   notificationTypes - (any)
#   topN - SOAP::SOAPInt
class GetNotificationsRequest
  attr_accessor :notificationTypes
  attr_accessor :topN

  def initialize(notificationTypes = nil, topN = nil)
    @notificationTypes = notificationTypes
    @topN = topN
  end
end

# {https://adcenter.microsoft.com/api/notifications}GetArchivedNotificationsRequest
#   notificationTypes - (any)
#   topN - SOAP::SOAPInt
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class GetArchivedNotificationsRequest
  attr_accessor :notificationTypes
  attr_accessor :topN
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(notificationTypes = nil, topN = nil, startDate = nil, endDate = nil)
    @notificationTypes = notificationTypes
    @topN = topN
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}GetNotificationsResponse
#   notifications - AdCenterWrapper::ArrayOfNotification
class GetNotificationsResponse
  attr_accessor :notifications

  def initialize(notifications = nil)
    @notifications = notifications
  end
end

# {https://adcenter.microsoft.com/api/notifications/Entities}GetArchivedNotificationsResponse
#   notifications - AdCenterWrapper::ArrayOfNotification
class GetArchivedNotificationsResponse
  attr_accessor :notifications

  def initialize(notifications = nil)
    @notifications = notifications
  end
end


end
