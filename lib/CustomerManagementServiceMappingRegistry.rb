require 'adcenter_wrapper_entities'
require 'CustomerManagementService.rb'
require 'soap/mapping'

module AdCenterWrapper

module CustomerManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsCustomermanagement = "https://adcenter.microsoft.com/api/customermanagement"
  NsEntities = "https://adcenter.microsoft.com/api/customermanagement/Entities"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AdCenterWrapper::AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Account,
    :schema_type => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PublisherAccount,
    :schema_type => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AdvertiserAccount,
    :schema_type => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Customer,
    :schema_type => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["customerFinancialStatus", ["AdCenterWrapper::CustomerFinancialStatus", XSD::QName.new(NsEntities, "CustomerFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["AdCenterWrapper::Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["marketCountry", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MarketCountry")], [0, 1]],
      ["marketLanguage", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "MarketLanguage")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["AdCenterWrapper::ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["customerLifeCycleStatus", ["AdCenterWrapper::CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Address,
    :schema_type => XSD::QName.new(NsEntities, "Address"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "City")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["line1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line1")], [0, 1]],
      ["line2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line2")], [0, 1]],
      ["line3", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line3")], [0, 1]],
      ["line4", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line4")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "PostalCode")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "StateOrProvince")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::User,
    :schema_type => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["AdCenterWrapper::ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["AdCenterWrapper::LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["AdCenterWrapper::PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["AdCenterWrapper::SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["userLifeCycleStatus", ["AdCenterWrapper::UserLifeCycleStatus", XSD::QName.new(NsEntities, "UserLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ContactInfo,
    :schema_type => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["AdCenterWrapper::EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PersonName,
    :schema_type => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfCustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["AdCenterWrapper::CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfUserInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["AdCenterWrapper::UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UserInfo,
    :schema_type => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfPilotFeature,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfPilotFeature"),
    :schema_element => [
      ["pilotFeature", ["AdCenterWrapper::PilotFeature[]", XSD::QName.new(NsEntities, "PilotFeature")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PilotFeature,
    :schema_type => XSD::QName.new(NsEntities, "PilotFeature"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["countries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsEntities, "Countries")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfoWithCustomerData,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfoWithCustomerData"),
    :schema_element => [
      ["accountInfoWithCustomerData", ["AdCenterWrapper::AccountInfoWithCustomerData[]", XSD::QName.new(NsEntities, "AccountInfoWithCustomerData")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountInfoWithCustomerData,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfoWithCustomerData"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CustomerName")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfint,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApplicationType,
    :schema_type => XSD::QName.new(NsEntities, "ApplicationType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountType,
    :schema_type => XSD::QName.new(NsEntities, "AccountType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CurrencyType,
    :schema_type => XSD::QName.new(NsEntities, "CurrencyType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::AccountFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LanguageType,
    :schema_type => XSD::QName.new(NsEntities, "LanguageType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::PaymentMethodType,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::TimeZoneType,
    :schema_type => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CustomerFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Industry,
    :schema_type => XSD::QName.new(NsEntities, "Industry")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ServiceLevel,
    :schema_type => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::CustomerLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::EmailFormat,
    :schema_type => XSD::QName.new(NsEntities, "EmailFormat")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::LCID,
    :schema_type => XSD::QName.new(NsEntities, "LCID")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::SecretQuestion,
    :schema_type => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UserLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "UserLifeCycleStatus")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::UserRole,
    :schema_type => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AdCenterWrapper::AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Account,
    :schema_type => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherAccount,
    :schema_type => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdvertiserAccount,
    :schema_type => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Customer,
    :schema_type => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["customerFinancialStatus", ["AdCenterWrapper::CustomerFinancialStatus", XSD::QName.new(NsEntities, "CustomerFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["AdCenterWrapper::Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["marketCountry", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MarketCountry")], [0, 1]],
      ["marketLanguage", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "MarketLanguage")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["AdCenterWrapper::ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["customerLifeCycleStatus", ["AdCenterWrapper::CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Address,
    :schema_type => XSD::QName.new(NsEntities, "Address"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "City")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["line1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line1")], [0, 1]],
      ["line2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line2")], [0, 1]],
      ["line3", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line3")], [0, 1]],
      ["line4", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line4")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "PostalCode")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "StateOrProvince")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::User,
    :schema_type => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["AdCenterWrapper::ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["AdCenterWrapper::LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["AdCenterWrapper::PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["AdCenterWrapper::SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["userLifeCycleStatus", ["AdCenterWrapper::UserLifeCycleStatus", XSD::QName.new(NsEntities, "UserLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ContactInfo,
    :schema_type => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["AdCenterWrapper::EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PersonName,
    :schema_type => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["AdCenterWrapper::CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfUserInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["AdCenterWrapper::UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserInfo,
    :schema_type => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPilotFeature,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfPilotFeature"),
    :schema_element => [
      ["pilotFeature", ["AdCenterWrapper::PilotFeature[]", XSD::QName.new(NsEntities, "PilotFeature")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PilotFeature,
    :schema_type => XSD::QName.new(NsEntities, "PilotFeature"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["countries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsEntities, "Countries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfoWithCustomerData,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfoWithCustomerData"),
    :schema_element => [
      ["accountInfoWithCustomerData", ["AdCenterWrapper::AccountInfoWithCustomerData[]", XSD::QName.new(NsEntities, "AccountInfoWithCustomerData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountInfoWithCustomerData,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfoWithCustomerData"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CustomerName")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfint,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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
    :class => AdCenterWrapper::AccountLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationType,
    :schema_type => XSD::QName.new(NsEntities, "ApplicationType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountType,
    :schema_type => XSD::QName.new(NsEntities, "AccountType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CurrencyType,
    :schema_type => XSD::QName.new(NsEntities, "CurrencyType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LanguageType,
    :schema_type => XSD::QName.new(NsEntities, "LanguageType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentMethodType,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeZoneType,
    :schema_type => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Industry,
    :schema_type => XSD::QName.new(NsEntities, "Industry")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ServiceLevel,
    :schema_type => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EmailFormat,
    :schema_type => XSD::QName.new(NsEntities, "EmailFormat")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LCID,
    :schema_type => XSD::QName.new(NsEntities, "LCID")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SecretQuestion,
    :schema_type => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "UserLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserRole,
    :schema_type => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountsInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountsInfoRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["onlyParentAccounts", ["SOAP::SOAPBoolean", XSD::QName.new(NsCustomermanagement, "OnlyParentAccounts")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountsInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountsInfoResponse"),
    :schema_element => [
      ["accountsInfo", ["AdCenterWrapper::ArrayOfAccountInfo", XSD::QName.new(NsCustomermanagement, "AccountsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::FindAccountsRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "FindAccountsRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["accountFilter", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "AccountFilter")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "TopN")], [0, 1]],
      ["applicationScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::FindAccountsResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "FindAccountsResponse"),
    :schema_element => [
      ["accountsInfo", ["AdCenterWrapper::ArrayOfAccountInfo", XSD::QName.new(NsCustomermanagement, "AccountsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddAccountRequest"),
    :schema_element => [
      ["account", ["AdCenterWrapper::Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddAccountResponse"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "AccountNumber")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateAccountRequest"),
    :schema_element => [
      ["account", ["AdCenterWrapper::Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateAccountResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerResponse"),
    :schema_element => [
      ["customer", ["AdCenterWrapper::Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateCustomerRequest"),
    :schema_element => [
      ["customer", ["AdCenterWrapper::Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateCustomerResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SignupCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "SignupCustomerRequest"),
    :schema_element => [
      ["customer", ["AdCenterWrapper::Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]],
      ["user", ["AdCenterWrapper::User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["account", ["AdCenterWrapper::Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "ParentCustomerId")], [0, 1]],
      ["applicationScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SignupCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "SignupCustomerResponse"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["customerNumber", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "CustomerNumber")], [0, 1]],
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "AccountNumber")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountResponse"),
    :schema_element => [
      ["account", ["AdCenterWrapper::Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomersInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomersInfoRequest"),
    :schema_element => [
      ["customerNameFilter", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "CustomerNameFilter")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "TopN")], [0, 1]],
      ["applicationScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomersInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomersInfoResponse"),
    :schema_element => [
      ["customersInfo", ["AdCenterWrapper::ArrayOfCustomerInfo", XSD::QName.new(NsCustomermanagement, "CustomersInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddUserRequest"),
    :schema_element => [
      ["user", ["AdCenterWrapper::User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["role", ["AdCenterWrapper::UserRole", XSD::QName.new(NsCustomermanagement, "Role")], [0, 1]],
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddUserResponse"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "Id")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteAccountResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteCustomerRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteCustomerResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRequest"),
    :schema_element => [
      ["user", ["AdCenterWrapper::User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateUserRolesRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRolesRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]],
      ["newRoleId", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "NewRoleId")], [0, 1]],
      ["newAccountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "NewAccountIds")], [0, 1]],
      ["newCustomerIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "NewCustomerIds")], [0, 1]],
      ["deleteRoleId", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "DeleteRoleId")], [0, 1]],
      ["deleteAccountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "DeleteAccountIds")], [0, 1]],
      ["deleteCustomerIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "DeleteCustomerIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateUserRolesResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRolesResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUserRequest"),
    :schema_element => [
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUserResponse"),
    :schema_element => [
      ["user", ["AdCenterWrapper::User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["roles", ["AdCenterWrapper::ArrayOfint", XSD::QName.new(NsCustomermanagement, "Roles")], [0, 1]],
      ["accounts", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "Accounts")], [0, 1]],
      ["customers", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomermanagement, "Customers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCurrentUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCurrentUserRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCurrentUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCurrentUserResponse"),
    :schema_element => [
      ["user", ["AdCenterWrapper::User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteUserRequest"),
    :schema_element => [
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::DeleteUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetUsersInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUsersInfoRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["statusFilter", ["AdCenterWrapper::UserLifeCycleStatus", XSD::QName.new(NsCustomermanagement, "StatusFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetUsersInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUsersInfoResponse"),
    :schema_element => [
      ["usersInfo", ["AdCenterWrapper::ArrayOfUserInfo", XSD::QName.new(NsCustomermanagement, "UsersInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomerPilotFeatureRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerPilotFeatureRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetCustomerPilotFeatureResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerPilotFeatureResponse"),
    :schema_element => [
      ["featurePilotFlags", ["AdCenterWrapper::ArrayOfint", XSD::QName.new(NsCustomermanagement, "FeaturePilotFlags")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPilotFeaturesCountriesRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetPilotFeaturesCountriesRequest"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetPilotFeaturesCountriesResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetPilotFeaturesCountriesResponse"),
    :schema_element => [
      ["pilotFeatures", ["AdCenterWrapper::ArrayOfPilotFeature", XSD::QName.new(NsCustomermanagement, "PilotFeatures")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccessibleCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccessibleCustomerRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccessibleCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccessibleCustomerResponse"),
    :schema_element => [
      ["accessibleCustomer", ["AdCenterWrapper::Customer", XSD::QName.new(NsCustomermanagement, "AccessibleCustomer")], [0, 1]],
      ["validFields", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "ValidFields")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::FindAccountsOrCustomersInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "FindAccountsOrCustomersInfoRequest"),
    :schema_element => [
      ["filter", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "Filter")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "TopN")], [0, 1]],
      ["applicationScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::FindAccountsOrCustomersInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "FindAccountsOrCustomersInfoResponse"),
    :schema_element => [
      ["accountInfoWithCustomerData", ["AdCenterWrapper::ArrayOfAccountInfoWithCustomerData", XSD::QName.new(NsCustomermanagement, "AccountInfoWithCustomerData")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AdCenterWrapper::AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountInfo,
    :schema_name => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountLifeCycleStatus,
    :schema_name => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplicationType,
    :schema_name => XSD::QName.new(NsEntities, "ApplicationType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Account,
    :schema_name => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountType,
    :schema_name => XSD::QName.new(NsEntities, "AccountType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CurrencyType,
    :schema_name => XSD::QName.new(NsEntities, "CurrencyType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountFinancialStatus,
    :schema_name => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LanguageType,
    :schema_name => XSD::QName.new(NsEntities, "LanguageType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentMethodType,
    :schema_name => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::TimeZoneType,
    :schema_name => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PublisherAccount,
    :schema_name => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AdvertiserAccount,
    :schema_name => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_element => [
      ["accountType", ["AdCenterWrapper::AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["AdCenterWrapper::CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["accountFinancialStatus", ["AdCenterWrapper::AccountFinancialStatus", XSD::QName.new(NsEntities, "AccountFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["AdCenterWrapper::PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["AdCenterWrapper::TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Customer,
    :schema_name => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["customerFinancialStatus", ["AdCenterWrapper::CustomerFinancialStatus", XSD::QName.new(NsEntities, "CustomerFinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["AdCenterWrapper::Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["marketCountry", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MarketCountry")], [0, 1]],
      ["marketLanguage", ["AdCenterWrapper::LanguageType", XSD::QName.new(NsEntities, "MarketLanguage")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["AdCenterWrapper::ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["customerLifeCycleStatus", ["AdCenterWrapper::CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Address,
    :schema_name => XSD::QName.new(NsEntities, "Address"),
    :schema_element => [
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "City")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["line1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line1")], [0, 1]],
      ["line2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line2")], [0, 1]],
      ["line3", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line3")], [0, 1]],
      ["line4", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Line4")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "PostalCode")], [0, 1]],
      ["stateOrProvince", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "StateOrProvince")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerFinancialStatus,
    :schema_name => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Industry,
    :schema_name => XSD::QName.new(NsEntities, "Industry")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ServiceLevel,
    :schema_name => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerLifeCycleStatus,
    :schema_name => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::User,
    :schema_name => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["AdCenterWrapper::ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["AdCenterWrapper::ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["AdCenterWrapper::LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["AdCenterWrapper::PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["AdCenterWrapper::SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["userLifeCycleStatus", ["AdCenterWrapper::UserLifeCycleStatus", XSD::QName.new(NsEntities, "UserLifeCycleStatus")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ContactInfo,
    :schema_name => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["AdCenterWrapper::EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::EmailFormat,
    :schema_name => XSD::QName.new(NsEntities, "EmailFormat")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::LCID,
    :schema_name => XSD::QName.new(NsEntities, "LCID")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PersonName,
    :schema_name => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::SecretQuestion,
    :schema_name => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserLifeCycleStatus,
    :schema_name => XSD::QName.new(NsEntities, "UserLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfCustomerInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["AdCenterWrapper::CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CustomerInfo,
    :schema_name => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserRole,
    :schema_name => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfUserInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["AdCenterWrapper::UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UserInfo,
    :schema_name => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfPilotFeature,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfPilotFeature"),
    :schema_element => [
      ["pilotFeature", ["AdCenterWrapper::PilotFeature[]", XSD::QName.new(NsEntities, "PilotFeature")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PilotFeature,
    :schema_name => XSD::QName.new(NsEntities, "PilotFeature"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["countries", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsEntities, "Countries")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfAccountInfoWithCustomerData,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfAccountInfoWithCustomerData"),
    :schema_element => [
      ["accountInfoWithCustomerData", ["AdCenterWrapper::AccountInfoWithCustomerData[]", XSD::QName.new(NsEntities, "AccountInfoWithCustomerData")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AccountInfoWithCustomerData,
    :schema_name => XSD::QName.new(NsEntities, "AccountInfoWithCustomerData"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["customerName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CustomerName")], [0, 1]],
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["accountLifeCycleStatus", ["AdCenterWrapper::AccountLifeCycleStatus", XSD::QName.new(NsEntities, "AccountLifeCycleStatus")], [0, 1]],
      ["pauseReason", ["SOAP::SOAPUnsignedByte", XSD::QName.new(NsEntities, "PauseReason")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfint,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
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
