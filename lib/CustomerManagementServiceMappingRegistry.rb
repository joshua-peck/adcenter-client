require 'CustomerManagementService.rb'
require 'soap/mapping'

module CustomerManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsCustomermanagement = "https://adcenter.microsoft.com/api/customermanagement"
  NsEntities = "https://adcenter.microsoft.com/api/customermanagement/Entities"

  EncodedRegistry.register(
    :class => ArrayOfAccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PublisherAccount,
    :schema_type => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdvertiserAccount,
    :schema_type => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Customer,
    :schema_type => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["financialStatus", ["CustomerFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["market", ["Market", XSD::QName.new(NsEntities, "Market")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["status", ["CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Address,
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
    :class => User,
    :schema_type => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["status", ["UserStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContactInfo,
    :schema_type => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PersonName,
    :schema_type => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfCustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfUserInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => UserInfo,
    :schema_type => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfint,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => OperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  EncodedRegistry.register(
    :class => AccountType,
    :schema_type => XSD::QName.new(NsEntities, "AccountType")
  )

  EncodedRegistry.register(
    :class => CurrencyType,
    :schema_type => XSD::QName.new(NsEntities, "CurrencyType")
  )

  EncodedRegistry.register(
    :class => AccountFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  EncodedRegistry.register(
    :class => LanguageType,
    :schema_type => XSD::QName.new(NsEntities, "LanguageType")
  )

  EncodedRegistry.register(
    :class => PaymentMethodType,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  EncodedRegistry.register(
    :class => TimeZoneType,
    :schema_type => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  EncodedRegistry.register(
    :class => CustomerFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  EncodedRegistry.register(
    :class => Industry,
    :schema_type => XSD::QName.new(NsEntities, "Industry")
  )

  EncodedRegistry.register(
    :class => Market,
    :schema_type => XSD::QName.new(NsEntities, "Market")
  )

  EncodedRegistry.register(
    :class => ServiceLevel,
    :schema_type => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  EncodedRegistry.register(
    :class => CustomerLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  EncodedRegistry.register(
    :class => EmailFormat,
    :schema_type => XSD::QName.new(NsEntities, "EmailFormat")
  )

  EncodedRegistry.register(
    :class => ApplicationType,
    :schema_type => XSD::QName.new(NsEntities, "ApplicationType")
  )

  EncodedRegistry.register(
    :class => LCID,
    :schema_type => XSD::QName.new(NsEntities, "LCID")
  )

  EncodedRegistry.register(
    :class => SecretQuestion,
    :schema_type => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  EncodedRegistry.register(
    :class => UserStatus,
    :schema_type => XSD::QName.new(NsEntities, "UserStatus")
  )

  EncodedRegistry.register(
    :class => UserRole,
    :schema_type => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => ArrayOfAccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountInfo,
    :schema_type => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PublisherAccount,
    :schema_type => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertiserAccount,
    :schema_type => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_basetype => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Customer,
    :schema_type => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["financialStatus", ["CustomerFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["market", ["Market", XSD::QName.new(NsEntities, "Market")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["status", ["CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Address,
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
    :class => User,
    :schema_type => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["status", ["UserStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContactInfo,
    :schema_type => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PersonName,
    :schema_type => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfCustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerInfo,
    :schema_type => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfUserInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UserInfo,
    :schema_type => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfint,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationError,
    :schema_type => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationFault,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiError,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => AccountType,
    :schema_type => XSD::QName.new(NsEntities, "AccountType")
  )

  LiteralRegistry.register(
    :class => CurrencyType,
    :schema_type => XSD::QName.new(NsEntities, "CurrencyType")
  )

  LiteralRegistry.register(
    :class => AccountFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  LiteralRegistry.register(
    :class => LanguageType,
    :schema_type => XSD::QName.new(NsEntities, "LanguageType")
  )

  LiteralRegistry.register(
    :class => PaymentMethodType,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  LiteralRegistry.register(
    :class => TimeZoneType,
    :schema_type => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  LiteralRegistry.register(
    :class => CustomerFinancialStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  LiteralRegistry.register(
    :class => Industry,
    :schema_type => XSD::QName.new(NsEntities, "Industry")
  )

  LiteralRegistry.register(
    :class => Market,
    :schema_type => XSD::QName.new(NsEntities, "Market")
  )

  LiteralRegistry.register(
    :class => ServiceLevel,
    :schema_type => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  LiteralRegistry.register(
    :class => CustomerLifeCycleStatus,
    :schema_type => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => EmailFormat,
    :schema_type => XSD::QName.new(NsEntities, "EmailFormat")
  )

  LiteralRegistry.register(
    :class => ApplicationType,
    :schema_type => XSD::QName.new(NsEntities, "ApplicationType")
  )

  LiteralRegistry.register(
    :class => LCID,
    :schema_type => XSD::QName.new(NsEntities, "LCID")
  )

  LiteralRegistry.register(
    :class => SecretQuestion,
    :schema_type => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  LiteralRegistry.register(
    :class => UserStatus,
    :schema_type => XSD::QName.new(NsEntities, "UserStatus")
  )

  LiteralRegistry.register(
    :class => UserRole,
    :schema_type => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => GetAccountsInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountsInfoRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAccountsInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountsInfoResponse"),
    :schema_element => [
      ["accountsInfo", ["ArrayOfAccountInfo", XSD::QName.new(NsCustomermanagement, "AccountsInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddAccountRequest"),
    :schema_element => [
      ["account", ["Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddAccountResponse"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "AccountNumber")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateAccountRequest"),
    :schema_element => [
      ["account", ["Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateAccountResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerResponse"),
    :schema_element => [
      ["customer", ["Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateCustomerRequest"),
    :schema_element => [
      ["customer", ["Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateCustomerResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SignupCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "SignupCustomerRequest"),
    :schema_element => [
      ["customer", ["Customer", XSD::QName.new(NsCustomermanagement, "Customer")], [0, 1]],
      ["user", ["User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["account", ["Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "ParentCustomerId")], [0, 1]],
      ["applicationScope", ["ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SignupCustomerResponse,
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
    :class => GetAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetAccountResponse"),
    :schema_element => [
      ["account", ["Account", XSD::QName.new(NsCustomermanagement, "Account")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomersInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomersInfoRequest"),
    :schema_element => [
      ["customerNameFilter", ["SOAP::SOAPString", XSD::QName.new(NsCustomermanagement, "CustomerNameFilter")], [0, 1]],
      ["topN", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "TopN")], [0, 1]],
      ["applicationScope", ["ApplicationType", XSD::QName.new(NsCustomermanagement, "ApplicationScope")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomersInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomersInfoResponse"),
    :schema_element => [
      ["customersInfo", ["ArrayOfCustomerInfo", XSD::QName.new(NsCustomermanagement, "CustomersInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddUserRequest"),
    :schema_element => [
      ["user", ["User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["role", ["UserRole", XSD::QName.new(NsCustomermanagement, "Role")], [0, 1]],
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "AccountIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "AddUserResponse"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "Id")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAccountRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "AccountId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAccountResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteAccountResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteCustomerRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteCustomerRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCustomerResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteCustomerResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdateUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRequest"),
    :schema_element => [
      ["user", ["User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserRolesRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRolesRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]],
      ["newRoleId", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "NewRoleId")], [0, 1]],
      ["newAccountIds", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "NewAccountIds")], [0, 1]],
      ["newCustomerIds", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "NewCustomerIds")], [0, 1]],
      ["deleteRoleId", ["SOAP::SOAPInt", XSD::QName.new(NsCustomermanagement, "DeleteRoleId")], [0, 1]],
      ["deleteAccountIds", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "DeleteAccountIds")], [0, 1]],
      ["deleteCustomerIds", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "DeleteCustomerIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserRolesResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "UpdateUserRolesResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomermanagement, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUserRequest"),
    :schema_element => [
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUserResponse"),
    :schema_element => [
      ["user", ["User", XSD::QName.new(NsCustomermanagement, "User")], [0, 1]],
      ["roles", ["ArrayOfint", XSD::QName.new(NsCustomermanagement, "Roles")], [0, 1]],
      ["accounts", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "Accounts")], [0, 1]],
      ["customers", ["ArrayOflong", XSD::QName.new(NsCustomermanagement, "Customers")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteUserRequest"),
    :schema_element => [
      ["userId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "UserId")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsCustomermanagement, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "DeleteUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetUsersInfoRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUsersInfoRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]],
      ["statusFilter", ["UserStatus", XSD::QName.new(NsCustomermanagement, "StatusFilter")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUsersInfoResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetUsersInfoResponse"),
    :schema_element => [
      ["usersInfo", ["ArrayOfUserInfo", XSD::QName.new(NsCustomermanagement, "UsersInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerPilotFeatureRequest,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerPilotFeatureRequest"),
    :schema_element => [
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomermanagement, "CustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerPilotFeatureResponse,
    :schema_name => XSD::QName.new(NsCustomermanagement, "GetCustomerPilotFeatureResponse"),
    :schema_element => [
      ["featurePilotFlags", ["ArrayOfint", XSD::QName.new(NsCustomermanagement, "FeaturePilotFlags")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAccountInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfAccountInfo"),
    :schema_element => [
      ["accountInfo", ["AccountInfo[]", XSD::QName.new(NsEntities, "AccountInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountInfo,
    :schema_name => XSD::QName.new(NsEntities, "AccountInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountLifeCycleStatus,
    :schema_name => XSD::QName.new(NsEntities, "AccountLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => Account,
    :schema_name => XSD::QName.new(NsEntities, "Account"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountType,
    :schema_name => XSD::QName.new(NsEntities, "AccountType")
  )

  LiteralRegistry.register(
    :class => CurrencyType,
    :schema_name => XSD::QName.new(NsEntities, "CurrencyType")
  )

  LiteralRegistry.register(
    :class => AccountFinancialStatus,
    :schema_name => XSD::QName.new(NsEntities, "AccountFinancialStatus")
  )

  LiteralRegistry.register(
    :class => LanguageType,
    :schema_name => XSD::QName.new(NsEntities, "LanguageType")
  )

  LiteralRegistry.register(
    :class => PaymentMethodType,
    :schema_name => XSD::QName.new(NsEntities, "PaymentMethodType")
  )

  LiteralRegistry.register(
    :class => TimeZoneType,
    :schema_name => XSD::QName.new(NsEntities, "TimeZoneType")
  )

  LiteralRegistry.register(
    :class => PublisherAccount,
    :schema_name => XSD::QName.new(NsEntities, "PublisherAccount"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertiserAccount,
    :schema_name => XSD::QName.new(NsEntities, "AdvertiserAccount"),
    :schema_element => [
      ["accountType", ["AccountType", XSD::QName.new(NsEntities, "AccountType")], [0, 1]],
      ["billToCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "BillToCustomerId")], [0, 1]],
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CountryCode")], [0, 1]],
      ["currencyType", ["CurrencyType", XSD::QName.new(NsEntities, "CurrencyType")], [0, 1]],
      ["financialStatus", ["AccountFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["language", ["LanguageType", XSD::QName.new(NsEntities, "Language")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["parentCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ParentCustomerId")], [0, 1]],
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PaymentMethodId")], [0, 1]],
      ["paymentMethodType", ["PaymentMethodType", XSD::QName.new(NsEntities, "PaymentMethodType")], [0, 1]],
      ["primaryUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "PrimaryUserId")], [0, 1]],
      ["status", ["AccountLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["timeZone", ["TimeZoneType", XSD::QName.new(NsEntities, "TimeZone")], [0, 1]],
      ["agencyContactName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AgencyContactName")], [0, 1]],
      ["agencyCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AgencyCustomerId")], [0, 1]],
      ["salesHouseCustomerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "SalesHouseCustomerId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Customer,
    :schema_name => XSD::QName.new(NsEntities, "Customer"),
    :schema_element => [
      ["customerAddress", ["Address", XSD::QName.new(NsEntities, "CustomerAddress")], [0, 1]],
      ["financialStatus", ["CustomerFinancialStatus", XSD::QName.new(NsEntities, "FinancialStatus")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["industry", ["Industry", XSD::QName.new(NsEntities, "Industry")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["market", ["Market", XSD::QName.new(NsEntities, "Market")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["serviceLevel", ["ServiceLevel", XSD::QName.new(NsEntities, "ServiceLevel")], [0, 1]],
      ["status", ["CustomerLifeCycleStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Address,
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
    :class => CustomerFinancialStatus,
    :schema_name => XSD::QName.new(NsEntities, "CustomerFinancialStatus")
  )

  LiteralRegistry.register(
    :class => Industry,
    :schema_name => XSD::QName.new(NsEntities, "Industry")
  )

  LiteralRegistry.register(
    :class => Market,
    :schema_name => XSD::QName.new(NsEntities, "Market")
  )

  LiteralRegistry.register(
    :class => ServiceLevel,
    :schema_name => XSD::QName.new(NsEntities, "ServiceLevel")
  )

  LiteralRegistry.register(
    :class => CustomerLifeCycleStatus,
    :schema_name => XSD::QName.new(NsEntities, "CustomerLifeCycleStatus")
  )

  LiteralRegistry.register(
    :class => User,
    :schema_name => XSD::QName.new(NsEntities, "User"),
    :schema_element => [
      ["contactInfo", ["ContactInfo", XSD::QName.new(NsEntities, "ContactInfo")], [0, 1]],
      ["customerAppScope", ["ApplicationType", XSD::QName.new(NsEntities, "CustomerAppScope")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["jobTitle", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "JobTitle")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["lcid", ["LCID", XSD::QName.new(NsEntities, "Lcid")], [0, 1]],
      ["name", ["PersonName", XSD::QName.new(NsEntities, "Name")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Password")], [0, 1]],
      ["secretAnswer", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecretAnswer")], [0, 1]],
      ["secretQuestion", ["SecretQuestion", XSD::QName.new(NsEntities, "SecretQuestion")], [0, 1]],
      ["status", ["UserStatus", XSD::QName.new(NsEntities, "Status")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContactInfo,
    :schema_name => XSD::QName.new(NsEntities, "ContactInfo"),
    :schema_element => [
      ["address", ["Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["contactByPhone", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPhone")], [0, 1]],
      ["contactByPostalMail", ["SOAP::SOAPBoolean", XSD::QName.new(NsEntities, "ContactByPostalMail")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Email")], [0, 1]],
      ["emailFormat", ["EmailFormat", XSD::QName.new(NsEntities, "EmailFormat")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Fax")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "HomePhone")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["mobile", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Mobile")], [0, 1]],
      ["phone1", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone1")], [0, 1]],
      ["phone2", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Phone2")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EmailFormat,
    :schema_name => XSD::QName.new(NsEntities, "EmailFormat")
  )

  LiteralRegistry.register(
    :class => ApplicationType,
    :schema_name => XSD::QName.new(NsEntities, "ApplicationType")
  )

  LiteralRegistry.register(
    :class => LCID,
    :schema_name => XSD::QName.new(NsEntities, "LCID")
  )

  LiteralRegistry.register(
    :class => PersonName,
    :schema_name => XSD::QName.new(NsEntities, "PersonName"),
    :schema_element => [
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SecretQuestion,
    :schema_name => XSD::QName.new(NsEntities, "SecretQuestion")
  )

  LiteralRegistry.register(
    :class => UserStatus,
    :schema_name => XSD::QName.new(NsEntities, "UserStatus")
  )

  LiteralRegistry.register(
    :class => ArrayOfCustomerInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfCustomerInfo"),
    :schema_element => [
      ["customerInfo", ["CustomerInfo[]", XSD::QName.new(NsEntities, "CustomerInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CustomerInfo,
    :schema_name => XSD::QName.new(NsEntities, "CustomerInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Name")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserRole,
    :schema_name => XSD::QName.new(NsEntities, "UserRole")
  )

  LiteralRegistry.register(
    :class => ArrayOfUserInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfUserInfo"),
    :schema_element => [
      ["userInfo", ["UserInfo[]", XSD::QName.new(NsEntities, "UserInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UserInfo,
    :schema_name => XSD::QName.new(NsEntities, "UserInfo"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "UserName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfint,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfint"),
    :schema_element => [
      ["int", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_name => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsC_Exception, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["OperationError[]", XSD::QName.new(NsC_Exception, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => OperationError,
    :schema_name => XSD::QName.new(NsC_Exception, "OperationError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationFault,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfAdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "ArrayOfAdApiError"),
    :schema_element => [
      ["adApiError", ["AdApiError[]", XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdApiError,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsAdapiMicrosoftCom, "Code")], [0, 1]],
      ["detail", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Detail")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "Message")], [0, 1]]
    ]
  )
end
