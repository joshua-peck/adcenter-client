require 'adcenter_wrapper_entities'
require 'soap/mapping'

module AdCenterWrapper

module SecureDataManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsEntities = "https://adcenter.microsoft.com/api/customermanagement/Entities"
  NsSecuredatamanagement = "https://adcenter.microsoft.com/api/securedatamanagement"

  EncodedRegistry.register(
    :class => AdCenterWrapper::PaymentMethod,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
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
    :class => AdCenterWrapper::CreditCardPaymentMethod,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardPaymentMethod"),
    :schema_basetype => XSD::QName.new(NsEntities, "PaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["expirationDate", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ExpirationDate")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["securityCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecurityCode")], [0, 1]],
      ["type", ["AdCenterWrapper::CreditCardType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
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
    :class => AdCenterWrapper::CreditCardType,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentMethod,
    :schema_type => XSD::QName.new(NsEntities, "PaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
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
    :class => AdCenterWrapper::CreditCardPaymentMethod,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardPaymentMethod"),
    :schema_basetype => XSD::QName.new(NsEntities, "PaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["expirationDate", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ExpirationDate")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["securityCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecurityCode")], [0, 1]],
      ["type", ["AdCenterWrapper::CreditCardType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
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
    :class => AdCenterWrapper::CreditCardType,
    :schema_type => XSD::QName.new(NsEntities, "CreditCardType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddPaymentMethodRequest,
    :schema_name => XSD::QName.new(NsSecuredatamanagement, "AddPaymentMethodRequest"),
    :schema_element => [
      ["paymentMethod", ["AdCenterWrapper::PaymentMethod", XSD::QName.new(NsSecuredatamanagement, "PaymentMethod")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddPaymentMethodResponse,
    :schema_name => XSD::QName.new(NsSecuredatamanagement, "AddPaymentMethodResponse"),
    :schema_element => [
      ["paymentMethodId", ["SOAP::SOAPLong", XSD::QName.new(NsSecuredatamanagement, "PaymentMethodId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::PaymentMethod,
    :schema_name => XSD::QName.new(NsEntities, "PaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]]
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
    :class => AdCenterWrapper::CreditCardPaymentMethod,
    :schema_name => XSD::QName.new(NsEntities, "CreditCardPaymentMethod"),
    :schema_element => [
      ["address", ["AdCenterWrapper::Address", XSD::QName.new(NsEntities, "Address")], [0, 1]],
      ["customerId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "CustomerId")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["timeStamp", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "TimeStamp")], [0, 1]],
      ["expirationDate", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ExpirationDate")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "FirstName")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "LastName")], [0, 1]],
      ["middleInitial", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "MiddleInitial")], [0, 1]],
      ["number", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Number")], [0, 1]],
      ["securityCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "SecurityCode")], [0, 1]],
      ["type", ["AdCenterWrapper::CreditCardType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::CreditCardType,
    :schema_name => XSD::QName.new(NsEntities, "CreditCardType")
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
