require 'adcenter_wrapper_entities'
require 'soap/mapping'

module AdCenterWrapper

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSyncapis = "http://adcenter.microsoft.com/syncapis"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "ArrayOfNotification"),
    :schema_element => [
      ["notification", ["AdCenterWrapper::Notification[]", XSD::QName.new(NsSyncapis, "Notification")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EditorialRejectionNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "EditorialRejectionNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountName")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CampaignName")], [0, 1]],
      ["campaignId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CampaignId")]],
      ["orderId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "OrderId")]],
      ["orderName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "OrderName")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CustomerName")], [0, 1]],
      ["adId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AdId")]],
      ["adTitle", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AdTitle")], [0, 1]],
      ["adDescription", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AdDescription")], [0, 1]],
      ["displayURL", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "DisplayURL")], [0, 1]],
      ["destinationURL", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "DestinationURL")], [0, 1]],
      ["keywordsRejected", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsRejected")]],
      ["keywordsAccepted", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsAccepted")]],
      ["keywordsPending", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsPending")]],
      ["top1Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top1Keyword")], [0, 1]],
      ["top1KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top1KeywordReason")], [0, 1]],
      ["top2Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top2Keyword")], [0, 1]],
      ["top2KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top2KeywordReason")], [0, 1]],
      ["top3Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top3Keyword")], [0, 1]],
      ["top3KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top3KeywordReason")], [0, 1]],
      ["top4Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top4Keyword")], [0, 1]],
      ["top4KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top4KeywordReason")], [0, 1]],
      ["top5Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top5Keyword")], [0, 1]],
      ["top5KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top5KeywordReason")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountSignupPaymentReceiptNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountSignupPaymentReceiptNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountName")], [0, 1]],
      ["preferredUserName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredUserName")], [0, 1]],
      ["creditCardName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardName")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["accountSetupFee", ["SOAP::SOAPDouble", XSD::QName.new(NsSyncapis, "AccountSetupFee")]],
      ["preferredCurrencyCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredCurrencyCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountClosedNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountClosedNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CustomerName")], [0, 1]],
      ["statusDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "StatusDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UnableToChargeCreditCardNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UnableToChargeCreditCardNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatusType", XSD::QName.new(NsSyncapis, "AccountFinancialStatus")]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["preferredCurrencyCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredCurrencyCode")], [0, 1]],
      ["balanceAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsSyncapis, "BalanceAmount")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CreditCardExpiredNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "CreditCardExpiredNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "CreditCardNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["creditCardExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "CreditCardExpirationDate")]],
      ["noticeNumber", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "NoticeNumber")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApproachingCreditCardExpirationNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "ApproachingCreditCardExpirationNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "CreditCardNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["creditCardExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "CreditCardExpirationDate")]],
      ["noticeNumber", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "NoticeNumber")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UserNameReminderNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UserNameReminderNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UserPasswordResetNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UserPasswordResetNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::NewUserAddedNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "NewUserAddedNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::NewCustomerSignupNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "NewCustomerSignupNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiUserAuthHeader,
    :schema_type => XSD::QName.new(NsSyncapis, "ApiUserAuthHeader"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Password")], [0, 1]],
      ["userAccessKey", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserAccessKey")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::NotificationType,
    :schema_type => XSD::QName.new(NsSyncapis, "NotificationType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountFinancialStatusType,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountFinancialStatusType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "ArrayOfNotification"),
    :schema_element => [
      ["notification", ["AdCenterWrapper::Notification[]", XSD::QName.new(NsSyncapis, "Notification")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EditorialRejectionNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "EditorialRejectionNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountName")], [0, 1]],
      ["campaignName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CampaignName")], [0, 1]],
      ["campaignId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CampaignId")]],
      ["orderId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "OrderId")]],
      ["orderName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "OrderName")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CustomerName")], [0, 1]],
      ["adId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AdId")]],
      ["adTitle", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AdTitle")], [0, 1]],
      ["adDescription", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AdDescription")], [0, 1]],
      ["displayURL", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "DisplayURL")], [0, 1]],
      ["destinationURL", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "DestinationURL")], [0, 1]],
      ["keywordsRejected", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsRejected")]],
      ["keywordsAccepted", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsAccepted")]],
      ["keywordsPending", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "KeywordsPending")]],
      ["top1Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top1Keyword")], [0, 1]],
      ["top1KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top1KeywordReason")], [0, 1]],
      ["top2Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top2Keyword")], [0, 1]],
      ["top2KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top2KeywordReason")], [0, 1]],
      ["top3Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top3Keyword")], [0, 1]],
      ["top3KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top3KeywordReason")], [0, 1]],
      ["top4Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top4Keyword")], [0, 1]],
      ["top4KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top4KeywordReason")], [0, 1]],
      ["top5Keyword", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top5Keyword")], [0, 1]],
      ["top5KeywordReason", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Top5KeywordReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountSignupPaymentReceiptNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountSignupPaymentReceiptNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountName")], [0, 1]],
      ["preferredUserName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredUserName")], [0, 1]],
      ["creditCardName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardName")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["accountSetupFee", ["SOAP::SOAPDouble", XSD::QName.new(NsSyncapis, "AccountSetupFee")]],
      ["preferredCurrencyCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredCurrencyCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountClosedNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountClosedNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CustomerName")], [0, 1]],
      ["statusDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "StatusDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UnableToChargeCreditCardNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UnableToChargeCreditCardNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "Notification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatusType", XSD::QName.new(NsSyncapis, "AccountFinancialStatus")]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["preferredCurrencyCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "PreferredCurrencyCode")], [0, 1]],
      ["balanceAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsSyncapis, "BalanceAmount")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CreditCardExpiredNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "CreditCardExpiredNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "CreditCardNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["creditCardExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "CreditCardExpirationDate")]],
      ["noticeNumber", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "NoticeNumber")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApproachingCreditCardExpirationNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "ApproachingCreditCardExpirationNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "CreditCardNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["accountId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "AccountId")]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "AccountNumber")], [0, 1]],
      ["creditCardTypeName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardTypeName")], [0, 1]],
      ["creditCardLastFour", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "CreditCardLastFour")], [0, 1]],
      ["creditCardExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "CreditCardExpirationDate")]],
      ["noticeNumber", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "NoticeNumber")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserNameReminderNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UserNameReminderNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserPasswordResetNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "UserPasswordResetNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::NewUserAddedNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "NewUserAddedNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::NewCustomerSignupNotification,
    :schema_type => XSD::QName.new(NsSyncapis, "NewCustomerSignupNotification"),
    :schema_basetype => XSD::QName.new(NsSyncapis, "UserNotification"),
    :schema_element => [
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "CustomerId")]],
      ["userLocale", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserLocale")], [0, 1]],
      ["recipientEmailAddress", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "RecipientEmailAddress")], [0, 1]],
      ["notificationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "NotificationDate")]],
      ["userId", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "UserId")]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["activationCode", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "ActivationCode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiUserAuthHeader,
    :schema_type => XSD::QName.new(NsSyncapis, "ApiUserAuthHeader"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Password")], [0, 1]],
      ["userAccessKey", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserAccessKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::NotificationType,
    :schema_type => XSD::QName.new(NsSyncapis, "NotificationType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountFinancialStatusType,
    :schema_type => XSD::QName.new(NsSyncapis, "AccountFinancialStatusType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotifications,
    :schema_name => XSD::QName.new(NsSyncapis, "GetNotifications"),
    :schema_element => [
      ["aPIFlags", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "APIFlags")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotificationsResponse,
    :schema_name => XSD::QName.new(NsSyncapis, "GetNotificationsResponse"),
    :schema_element => [
      ["getNotificationsResult", ["AdCenterWrapper::ArrayOfNotification", XSD::QName.new(NsSyncapis, "GetNotificationsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiUserAuthHeader,
    :schema_name => XSD::QName.new(NsSyncapis, "ApiUserAuthHeader"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "Password")], [0, 1]],
      ["userAccessKey", ["SOAP::SOAPString", XSD::QName.new(NsSyncapis, "UserAccessKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotificationsByType,
    :schema_name => XSD::QName.new(NsSyncapis, "GetNotificationsByType"),
    :schema_element => [
      ["aPIFlags", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "APIFlags")]],
      ["notificationType", ["AdCenterWrapper::NotificationType", XSD::QName.new(NsSyncapis, "NotificationType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetNotificationsByTypeResponse,
    :schema_name => XSD::QName.new(NsSyncapis, "GetNotificationsByTypeResponse"),
    :schema_element => [
      ["getNotificationsByTypeResult", ["AdCenterWrapper::ArrayOfNotification", XSD::QName.new(NsSyncapis, "GetNotificationsByTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetArchivedNotifications,
    :schema_name => XSD::QName.new(NsSyncapis, "GetArchivedNotifications"),
    :schema_element => [
      ["aPIFlags", ["SOAP::SOAPInt", XSD::QName.new(NsSyncapis, "APIFlags")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSyncapis, "EndDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetArchivedNotificationsResponse,
    :schema_name => XSD::QName.new(NsSyncapis, "GetArchivedNotificationsResponse"),
    :schema_element => [
      ["getArchivedNotificationsResult", ["AdCenterWrapper::ArrayOfNotification", XSD::QName.new(NsSyncapis, "GetArchivedNotificationsResult")], [0, 1]]
    ]
  )
end

end
