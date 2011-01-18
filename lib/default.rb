require 'xsd/qname'

# {http://adcenter.microsoft.com/syncapis}ArrayOfNotification
class ArrayOfNotification < ::Array
end

# {http://adcenter.microsoft.com/syncapis}Notification
# abstract
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
class Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
  end
end

# {http://adcenter.microsoft.com/syncapis}EditorialRejectionNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   accountName - SOAP::SOAPString
#   campaignName - SOAP::SOAPString
#   campaignId - SOAP::SOAPInt
#   orderId - SOAP::SOAPInt
#   orderName - SOAP::SOAPString
#   customerName - SOAP::SOAPString
#   adId - SOAP::SOAPInt
#   adTitle - SOAP::SOAPString
#   adDescription - SOAP::SOAPString
#   displayURL - SOAP::SOAPString
#   destinationURL - SOAP::SOAPString
#   keywordsRejected - SOAP::SOAPInt
#   keywordsAccepted - SOAP::SOAPInt
#   keywordsPending - SOAP::SOAPInt
#   top1Keyword - SOAP::SOAPString
#   top1KeywordReason - SOAP::SOAPString
#   top2Keyword - SOAP::SOAPString
#   top2KeywordReason - SOAP::SOAPString
#   top3Keyword - SOAP::SOAPString
#   top3KeywordReason - SOAP::SOAPString
#   top4Keyword - SOAP::SOAPString
#   top4KeywordReason - SOAP::SOAPString
#   top5Keyword - SOAP::SOAPString
#   top5KeywordReason - SOAP::SOAPString
class EditorialRejectionNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :accountName
  attr_accessor :campaignName
  attr_accessor :campaignId
  attr_accessor :orderId
  attr_accessor :orderName
  attr_accessor :customerName
  attr_accessor :adId
  attr_accessor :adTitle
  attr_accessor :adDescription
  attr_accessor :displayURL
  attr_accessor :destinationURL
  attr_accessor :keywordsRejected
  attr_accessor :keywordsAccepted
  attr_accessor :keywordsPending
  attr_accessor :top1Keyword
  attr_accessor :top1KeywordReason
  attr_accessor :top2Keyword
  attr_accessor :top2KeywordReason
  attr_accessor :top3Keyword
  attr_accessor :top3KeywordReason
  attr_accessor :top4Keyword
  attr_accessor :top4KeywordReason
  attr_accessor :top5Keyword
  attr_accessor :top5KeywordReason

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountName = nil, campaignName = nil, campaignId = nil, orderId = nil, orderName = nil, customerName = nil, adId = nil, adTitle = nil, adDescription = nil, displayURL = nil, destinationURL = nil, keywordsRejected = nil, keywordsAccepted = nil, keywordsPending = nil, top1Keyword = nil, top1KeywordReason = nil, top2Keyword = nil, top2KeywordReason = nil, top3Keyword = nil, top3KeywordReason = nil, top4Keyword = nil, top4KeywordReason = nil, top5Keyword = nil, top5KeywordReason = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @accountName = accountName
    @campaignName = campaignName
    @campaignId = campaignId
    @orderId = orderId
    @orderName = orderName
    @customerName = customerName
    @adId = adId
    @adTitle = adTitle
    @adDescription = adDescription
    @displayURL = displayURL
    @destinationURL = destinationURL
    @keywordsRejected = keywordsRejected
    @keywordsAccepted = keywordsAccepted
    @keywordsPending = keywordsPending
    @top1Keyword = top1Keyword
    @top1KeywordReason = top1KeywordReason
    @top2Keyword = top2Keyword
    @top2KeywordReason = top2KeywordReason
    @top3Keyword = top3Keyword
    @top3KeywordReason = top3KeywordReason
    @top4Keyword = top4Keyword
    @top4KeywordReason = top4KeywordReason
    @top5Keyword = top5Keyword
    @top5KeywordReason = top5KeywordReason
  end
end

# {http://adcenter.microsoft.com/syncapis}AccountSignupPaymentReceiptNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   accountName - SOAP::SOAPString
#   preferredUserName - SOAP::SOAPString
#   creditCardName - SOAP::SOAPString
#   creditCardTypeName - SOAP::SOAPString
#   creditCardLastFour - SOAP::SOAPString
#   accountSetupFee - SOAP::SOAPDouble
#   preferredCurrencyCode - SOAP::SOAPString
class AccountSignupPaymentReceiptNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :accountName
  attr_accessor :preferredUserName
  attr_accessor :creditCardName
  attr_accessor :creditCardTypeName
  attr_accessor :creditCardLastFour
  attr_accessor :accountSetupFee
  attr_accessor :preferredCurrencyCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountName = nil, preferredUserName = nil, creditCardName = nil, creditCardTypeName = nil, creditCardLastFour = nil, accountSetupFee = nil, preferredCurrencyCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @accountName = accountName
    @preferredUserName = preferredUserName
    @creditCardName = creditCardName
    @creditCardTypeName = creditCardTypeName
    @creditCardLastFour = creditCardLastFour
    @accountSetupFee = accountSetupFee
    @preferredCurrencyCode = preferredCurrencyCode
  end
end

# {http://adcenter.microsoft.com/syncapis}AccountClosedNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   customerName - SOAP::SOAPString
#   statusDate - SOAP::SOAPDateTime
class AccountClosedNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :customerName
  attr_accessor :statusDate

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, customerName = nil, statusDate = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @customerName = customerName
    @statusDate = statusDate
  end
end

# {http://adcenter.microsoft.com/syncapis}UnableToChargeCreditCardNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   accountFinancialStatus - AccountFinancialStatusType
#   creditCardTypeName - SOAP::SOAPString
#   creditCardLastFour - SOAP::SOAPString
#   preferredCurrencyCode - SOAP::SOAPString
#   balanceAmount - SOAP::SOAPDouble
class UnableToChargeCreditCardNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :accountFinancialStatus
  attr_accessor :creditCardTypeName
  attr_accessor :creditCardLastFour
  attr_accessor :preferredCurrencyCode
  attr_accessor :balanceAmount

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, accountFinancialStatus = nil, creditCardTypeName = nil, creditCardLastFour = nil, preferredCurrencyCode = nil, balanceAmount = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @accountFinancialStatus = accountFinancialStatus
    @creditCardTypeName = creditCardTypeName
    @creditCardLastFour = creditCardLastFour
    @preferredCurrencyCode = preferredCurrencyCode
    @balanceAmount = balanceAmount
  end
end

# {http://adcenter.microsoft.com/syncapis}CreditCardNotification
# abstract
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   creditCardTypeName - SOAP::SOAPString
#   creditCardLastFour - SOAP::SOAPString
#   creditCardExpirationDate - SOAP::SOAPDateTime
#   noticeNumber - SOAP::SOAPInt
class CreditCardNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :creditCardTypeName
  attr_accessor :creditCardLastFour
  attr_accessor :creditCardExpirationDate
  attr_accessor :noticeNumber

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @creditCardTypeName = creditCardTypeName
    @creditCardLastFour = creditCardLastFour
    @creditCardExpirationDate = creditCardExpirationDate
    @noticeNumber = noticeNumber
  end
end

# {http://adcenter.microsoft.com/syncapis}CreditCardExpiredNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   creditCardTypeName - SOAP::SOAPString
#   creditCardLastFour - SOAP::SOAPString
#   creditCardExpirationDate - SOAP::SOAPDateTime
#   noticeNumber - SOAP::SOAPInt
class CreditCardExpiredNotification < CreditCardNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :creditCardTypeName
  attr_accessor :creditCardLastFour
  attr_accessor :creditCardExpirationDate
  attr_accessor :noticeNumber

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @creditCardTypeName = creditCardTypeName
    @creditCardLastFour = creditCardLastFour
    @creditCardExpirationDate = creditCardExpirationDate
    @noticeNumber = noticeNumber
  end
end

# {http://adcenter.microsoft.com/syncapis}ApproachingCreditCardExpirationNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   accountId - SOAP::SOAPInt
#   accountNumber - SOAP::SOAPString
#   creditCardTypeName - SOAP::SOAPString
#   creditCardLastFour - SOAP::SOAPString
#   creditCardExpirationDate - SOAP::SOAPDateTime
#   noticeNumber - SOAP::SOAPInt
class ApproachingCreditCardExpirationNotification < CreditCardNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :accountId
  attr_accessor :accountNumber
  attr_accessor :creditCardTypeName
  attr_accessor :creditCardLastFour
  attr_accessor :creditCardExpirationDate
  attr_accessor :noticeNumber

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, accountId = nil, accountNumber = nil, creditCardTypeName = nil, creditCardLastFour = nil, creditCardExpirationDate = nil, noticeNumber = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @accountId = accountId
    @accountNumber = accountNumber
    @creditCardTypeName = creditCardTypeName
    @creditCardLastFour = creditCardLastFour
    @creditCardExpirationDate = creditCardExpirationDate
    @noticeNumber = noticeNumber
  end
end

# {http://adcenter.microsoft.com/syncapis}UserNotification
# abstract
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   userId - SOAP::SOAPInt
#   userName - SOAP::SOAPString
#   activationCode - SOAP::SOAPString
class UserNotification < Notification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :userId
  attr_accessor :userName
  attr_accessor :activationCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @userId = userId
    @userName = userName
    @activationCode = activationCode
  end
end

# {http://adcenter.microsoft.com/syncapis}UserNameReminderNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   userId - SOAP::SOAPInt
#   userName - SOAP::SOAPString
#   activationCode - SOAP::SOAPString
class UserNameReminderNotification < UserNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :userId
  attr_accessor :userName
  attr_accessor :activationCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @userId = userId
    @userName = userName
    @activationCode = activationCode
  end
end

# {http://adcenter.microsoft.com/syncapis}UserPasswordResetNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   userId - SOAP::SOAPInt
#   userName - SOAP::SOAPString
#   activationCode - SOAP::SOAPString
class UserPasswordResetNotification < UserNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :userId
  attr_accessor :userName
  attr_accessor :activationCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @userId = userId
    @userName = userName
    @activationCode = activationCode
  end
end

# {http://adcenter.microsoft.com/syncapis}NewUserAddedNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   userId - SOAP::SOAPInt
#   userName - SOAP::SOAPString
#   activationCode - SOAP::SOAPString
class NewUserAddedNotification < UserNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :userId
  attr_accessor :userName
  attr_accessor :activationCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @userId = userId
    @userName = userName
    @activationCode = activationCode
  end
end

# {http://adcenter.microsoft.com/syncapis}NewCustomerSignupNotification
#   notificationType - NotificationType
#   customerId - SOAP::SOAPInt
#   userLocale - SOAP::SOAPString
#   recipientEmailAddress - SOAP::SOAPString
#   notificationDate - SOAP::SOAPDateTime
#   userId - SOAP::SOAPInt
#   userName - SOAP::SOAPString
#   activationCode - SOAP::SOAPString
class NewCustomerSignupNotification < UserNotification
  attr_accessor :notificationType
  attr_accessor :customerId
  attr_accessor :userLocale
  attr_accessor :recipientEmailAddress
  attr_accessor :notificationDate
  attr_accessor :userId
  attr_accessor :userName
  attr_accessor :activationCode

  def initialize(notificationType = nil, customerId = nil, userLocale = nil, recipientEmailAddress = nil, notificationDate = nil, userId = nil, userName = nil, activationCode = nil)
    @notificationType = notificationType
    @customerId = customerId
    @userLocale = userLocale
    @recipientEmailAddress = recipientEmailAddress
    @notificationDate = notificationDate
    @userId = userId
    @userName = userName
    @activationCode = activationCode
  end
end

# {http://adcenter.microsoft.com/syncapis}ApiUserAuthHeader
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   userAccessKey - SOAP::SOAPString
class ApiUserAuthHeader
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :userAccessKey

  def initialize(userName = nil, password = nil, userAccessKey = nil)
    @userName = userName
    @password = password
    @userAccessKey = userAccessKey
  end
end

# {http://adcenter.microsoft.com/syncapis}NotificationType
class NotificationType < ::String
  AccountClosed = NotificationType.new("AccountClosed")
  AccountSignupPaymentReceipt = NotificationType.new("AccountSignupPaymentReceipt")
  ApproachingCreditCardExpiration = NotificationType.new("ApproachingCreditCardExpiration")
  CreditCardExpired = NotificationType.new("CreditCardExpired")
  EditorialRejection = NotificationType.new("EditorialRejection")
  NewCustomerSignup = NotificationType.new("NewCustomerSignup")
  NewUserAdded = NotificationType.new("NewUserAdded")
  UnableToChargeCreditCard = NotificationType.new("UnableToChargeCreditCard")
  UserNameReminder = NotificationType.new("UserNameReminder")
  UserPasswordReset = NotificationType.new("UserPasswordReset")
end

# {http://adcenter.microsoft.com/syncapis}AccountFinancialStatusType
class AccountFinancialStatusType < ::String
  CreditHold = AccountFinancialStatusType.new("CreditHold")
  CreditWarning = AccountFinancialStatusType.new("CreditWarning")
end

# {http://adcenter.microsoft.com/syncapis}GetNotifications
#   aPIFlags - SOAP::SOAPInt
class GetNotifications
  attr_accessor :aPIFlags

  def initialize(aPIFlags = nil)
    @aPIFlags = aPIFlags
  end
end

# {http://adcenter.microsoft.com/syncapis}GetNotificationsResponse
#   getNotificationsResult - ArrayOfNotification
class GetNotificationsResponse
  attr_accessor :getNotificationsResult

  def initialize(getNotificationsResult = nil)
    @getNotificationsResult = getNotificationsResult
  end
end

# {http://adcenter.microsoft.com/syncapis}GetNotificationsByType
#   aPIFlags - SOAP::SOAPInt
#   notificationType - NotificationType
class GetNotificationsByType
  attr_accessor :aPIFlags
  attr_accessor :notificationType

  def initialize(aPIFlags = nil, notificationType = nil)
    @aPIFlags = aPIFlags
    @notificationType = notificationType
  end
end

# {http://adcenter.microsoft.com/syncapis}GetNotificationsByTypeResponse
#   getNotificationsByTypeResult - ArrayOfNotification
class GetNotificationsByTypeResponse
  attr_accessor :getNotificationsByTypeResult

  def initialize(getNotificationsByTypeResult = nil)
    @getNotificationsByTypeResult = getNotificationsByTypeResult
  end
end

# {http://adcenter.microsoft.com/syncapis}GetArchivedNotifications
#   aPIFlags - SOAP::SOAPInt
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class GetArchivedNotifications
  attr_accessor :aPIFlags
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(aPIFlags = nil, startDate = nil, endDate = nil)
    @aPIFlags = aPIFlags
    @startDate = startDate
    @endDate = endDate
  end
end

# {http://adcenter.microsoft.com/syncapis}GetArchivedNotificationsResponse
#   getArchivedNotificationsResult - ArrayOfNotification
class GetArchivedNotificationsResponse
  attr_accessor :getArchivedNotificationsResult

  def initialize(getArchivedNotificationsResult = nil)
    @getArchivedNotificationsResult = getArchivedNotificationsResult
  end
end
