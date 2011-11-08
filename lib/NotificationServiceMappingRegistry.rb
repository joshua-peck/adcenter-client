require 'adcenter_wrapper_entities'
require 'NotificationService.rb'
require 'soap/mapping'

module AdCenterWrapper

module NotificationServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsEntities = "https://adcenter.microsoft.com/api/notifications/Entities"
  NsNotifications = "https://adcenter.microsoft.com/api/notifications"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfNotification,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfNotification"),
    :schema_element => [
      ["notification", ["AdCenterWrapper::Notification[]", XSD::QName.new(NsEntities, "Notification")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Notification,
    :schema_type => XSD::QName.new(NsEntities, "Notification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CreditCardPendingExpirationNotification,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardPendingExpirationNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountNotification,
    :schema_type => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "Notification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ExpiredCreditCardNotification,
    :schema_type => XSD::QName.new(NsEntities, "ExpiredCreditCardNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ExpiredInsertionOrderNotification,
    :schema_type => XSD::QName.new(NsEntities, "ExpiredInsertionOrderNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["billToCustomerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BillToCustomerName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedNotification,
    :schema_type => XSD::QName.new(NsEntities, "BudgetDepletedNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfBudgetDepletedCampaignInfo"),
    :schema_element => [
      ["budgetDepletedCampaignInfo", ["AdCenterWrapper::BudgetDepletedCampaignInfo[]", XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo"),
    :schema_basetype => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["budgetDepletedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "BudgetDepletedDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialRejectionNotification,
    :schema_type => XSD::QName.new(NsEntities, "EditorialRejectionNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceNotification,
    :schema_type => XSD::QName.new(NsEntities, "LowBudgetBalanceNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfLowBudgetBalanceCampaignInfo"),
    :schema_element => [
      ["lowBudgetBalanceCampaignInfo", ["AdCenterWrapper::LowBudgetBalanceCampaignInfo[]", XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo"),
    :schema_basetype => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["estimatedBudgetBalance", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "EstimatedBudgetBalance")], [0, 1]],
      ["estimatedImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "EstimatedImpressions")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfNotification,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfNotification"),
    :schema_element => [
      ["notification", ["AdCenterWrapper::Notification[]", XSD::QName.new(NsEntities, "Notification")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Notification,
    :schema_type => XSD::QName.new(NsEntities, "Notification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CreditCardPendingExpirationNotification,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardPendingExpirationNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountNotification,
    :schema_type => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "Notification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ExpiredCreditCardNotification,
    :schema_type => XSD::QName.new(NsEntities, "ExpiredCreditCardNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ExpiredInsertionOrderNotification,
    :schema_type => XSD::QName.new(NsEntities, "ExpiredInsertionOrderNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["billToCustomerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BillToCustomerName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedNotification,
    :schema_type => XSD::QName.new(NsEntities, "BudgetDepletedNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfBudgetDepletedCampaignInfo"),
    :schema_element => [
      ["budgetDepletedCampaignInfo", ["AdCenterWrapper::BudgetDepletedCampaignInfo[]", XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo"),
    :schema_basetype => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["budgetDepletedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "BudgetDepletedDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialRejectionNotification,
    :schema_type => XSD::QName.new(NsEntities, "EditorialRejectionNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceNotification,
    :schema_type => XSD::QName.new(NsEntities, "LowBudgetBalanceNotification"),
    :schema_basetype => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfLowBudgetBalanceCampaignInfo"),
    :schema_element => [
      ["lowBudgetBalanceCampaignInfo", ["AdCenterWrapper::LowBudgetBalanceCampaignInfo[]", XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceCampaignInfo,
    :schema_type => XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo"),
    :schema_basetype => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["estimatedBudgetBalance", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "EstimatedBudgetBalance")], [0, 1]],
      ["estimatedImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "EstimatedImpressions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotificationsRequest,
    :schema_name => XSD::QName.new(NsNotifications, "GetNotificationsRequest"),
    :schema_element => [
      ["notificationTypes", [nil, XSD::QName.new(NsNotifications, "NotificationTypes")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsNotifications, "TopN")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetArchivedNotificationsRequest,
    :schema_name => XSD::QName.new(NsNotifications, "GetArchivedNotificationsRequest"),
    :schema_element => [
      ["notificationTypes", [nil, XSD::QName.new(NsNotifications, "NotificationTypes")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsNotifications, "TopN")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsNotifications, "StartDate")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsNotifications, "EndDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotificationsResponse,
    :schema_name => XSD::QName.new(NsEntities, "GetNotificationsResponse"),
    :schema_element => [
      ["notifications", ["AdCenterWrapper::ArrayOfNotification", XSD::QName.new(NsEntities, "Notifications")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfNotification,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfNotification"),
    :schema_element => [
      ["notification", ["AdCenterWrapper::Notification[]", XSD::QName.new(NsEntities, "Notification")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Notification,
    :schema_name => XSD::QName.new(NsEntities, "Notification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CreditCardPendingExpirationNotification,
    :schema_name => XSD::QName.new(NsEntities, "CreditCardPendingExpirationNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountNotification,
    :schema_name => XSD::QName.new(NsEntities, "AccountNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ExpiredCreditCardNotification,
    :schema_name => XSD::QName.new(NsEntities, "ExpiredCreditCardNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["cardType", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CardType")], [0, 1]],
      ["lastFourDigits", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastFourDigits")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ExpiredInsertionOrderNotification,
    :schema_name => XSD::QName.new(NsEntities, "ExpiredInsertionOrderNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["billToCustomerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BillToCustomerName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedNotification,
    :schema_name => XSD::QName.new(NsEntities, "BudgetDepletedNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetDepletedCampaignInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfBudgetDepletedCampaignInfo"),
    :schema_element => [
      ["budgetDepletedCampaignInfo", ["AdCenterWrapper::BudgetDepletedCampaignInfo[]", XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetDepletedCampaignInfo,
    :schema_name => XSD::QName.new(NsEntities, "BudgetDepletedCampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["budgetDepletedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "BudgetDepletedDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CampaignInfo,
    :schema_name => XSD::QName.new(NsEntities, "CampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialRejectionNotification,
    :schema_name => XSD::QName.new(NsEntities, "EditorialRejectionNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceNotification,
    :schema_name => XSD::QName.new(NsEntities, "LowBudgetBalanceNotification"),
    :schema_element => [
      ["notificationId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "NotificationId")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "NotificationDate")], [0, 1]],
      ["notificationType", [nil, XSD::QName.new(NsEntities, "NotificationType")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["affectedCampaigns", ["AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo", XSD::QName.new(NsEntities, "AffectedCampaigns")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfLowBudgetBalanceCampaignInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfLowBudgetBalanceCampaignInfo"),
    :schema_element => [
      ["lowBudgetBalanceCampaignInfo", ["AdCenterWrapper::LowBudgetBalanceCampaignInfo[]", XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LowBudgetBalanceCampaignInfo,
    :schema_name => XSD::QName.new(NsEntities, "LowBudgetBalanceCampaignInfo"),
    :schema_element => [
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CampaignId")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CampaignName")], [0, 1]],
      ["budgetAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BudgetAmount")], [0, 1]],
      ["estimatedBudgetBalance", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "EstimatedBudgetBalance")], [0, 1]],
      ["estimatedImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "EstimatedImpressions")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetArchivedNotificationsResponse,
    :schema_name => XSD::QName.new(NsEntities, "GetArchivedNotificationsResponse"),
    :schema_element => [
      ["notifications", ["AdCenterWrapper::ArrayOfNotification", XSD::QName.new(NsEntities, "Notifications")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationFault,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdCenterWrapper::AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFault,
    :schema_name => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_name => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

end

end
