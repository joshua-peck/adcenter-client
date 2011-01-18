require 'CustomerBillingService.rb'
require 'soap/mapping'

module CustomerBillingServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsCustomerbilling = "https://adcenter.microsoft.com/api/customerbilling"
  NsEntities = "https://adcenter.microsoft.com/api/customermanagement/Entities"

  EncodedRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfInvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => InvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "InvoiceInfo"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "Amount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "InvoiceDate")], [0, 1]],
      ["invoiceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InvoiceId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfInvoice,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Invoice,
    :schema_type => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "InsertionOrder"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["balanceAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BalanceAmount")], [0, 1]],
      ["bookingCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BookingCountryCode")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Comment")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "EndDate")], [0, 1]],
      ["insertionOrderId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InsertionOrderId")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["notificationThreshold", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "NotificationThreshold")], [0, 1]],
      ["referenceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ReferenceId")], [0, 1]],
      ["spendCapAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "SpendCapAmount")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "StartDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfInsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
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
    :class => ApiBatchFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_basetype => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => BatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
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
    :class => DataType,
    :schema_type => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "InvoiceInfo"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "Amount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "InvoiceDate")], [0, 1]],
      ["invoiceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InvoiceId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInvoice,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Invoice,
    :schema_type => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "InsertionOrder"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["balanceAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BalanceAmount")], [0, 1]],
      ["bookingCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BookingCountryCode")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Comment")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "EndDate")], [0, 1]],
      ["insertionOrderId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InsertionOrderId")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["notificationThreshold", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "NotificationThreshold")], [0, 1]],
      ["referenceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ReferenceId")], [0, 1]],
      ["spendCapAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "SpendCapAmount")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "StartDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
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
    :class => ApiBatchFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_basetype => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
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
    :class => DataType,
    :schema_type => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => GetInvoicesInfoRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesInfoRequest"),
    :schema_element => [
      ["accountIds", ["ArrayOflong", XSD::QName.new(NsCustomerbilling, "AccountIds")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "StartDate")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "EndDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetInvoicesInfoResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesInfoResponse"),
    :schema_element => [
      ["invoicesInfo", ["ArrayOfInvoiceInfo", XSD::QName.new(NsCustomerbilling, "InvoicesInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["ArrayOflong", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]],
      ["type", ["DataType", XSD::QName.new(NsCustomerbilling, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesResponse"),
    :schema_element => [
      ["invoices", ["ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDisplayInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetDisplayInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["ArrayOflong", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]],
      ["type", ["DataType", XSD::QName.new(NsCustomerbilling, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDisplayInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetDisplayInvoicesResponse"),
    :schema_element => [
      ["invoices", ["ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddInsertionOrderRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "AddInsertionOrderRequest"),
    :schema_element => [
      ["insertionOrder", ["InsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddInsertionOrderResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "AddInsertionOrderResponse"),
    :schema_element => [
      ["insertionOrderId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomerbilling, "InsertionOrderId")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateInsertionOrderRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "UpdateInsertionOrderRequest"),
    :schema_element => [
      ["insertionOrder", ["InsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateInsertionOrderResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "UpdateInsertionOrderResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetInsertionOrdersByAccountRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInsertionOrdersByAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomerbilling, "AccountId")], [0, 1]],
      ["insertionOrderIds", ["ArrayOflong", XSD::QName.new(NsCustomerbilling, "InsertionOrderIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetInsertionOrdersByAccountResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInsertionOrdersByAccountResponse"),
    :schema_element => [
      ["insertionOrders", ["ArrayOfInsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrders")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKOHIOInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetKOHIOInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["ArrayOfstring", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetKOHIOInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetKOHIOInvoicesResponse"),
    :schema_element => [
      ["invoices", ["ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
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
    :class => ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInvoiceInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvoiceInfo,
    :schema_name => XSD::QName.new(NsEntities, "InvoiceInfo"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["accountName", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountName")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "AccountNumber")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "Amount")], [0, 1]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "CurrencyCode")], [0, 1]],
      ["invoiceDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "InvoiceDate")], [0, 1]],
      ["invoiceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InvoiceId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DataType,
    :schema_name => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => ArrayOfInvoice,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Invoice,
    :schema_name => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InsertionOrder,
    :schema_name => XSD::QName.new(NsEntities, "InsertionOrder"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "AccountId")], [0, 1]],
      ["balanceAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "BalanceAmount")], [0, 1]],
      ["bookingCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "BookingCountryCode")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(NsEntities, "Comment")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "EndDate")], [0, 1]],
      ["insertionOrderId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "InsertionOrderId")], [0, 1]],
      ["lastModifiedByUserId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "LastModifiedByUserId")], [0, 1]],
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "LastModifiedTime")], [0, 1]],
      ["notificationThreshold", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "NotificationThreshold")], [0, 1]],
      ["referenceId", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "ReferenceId")], [0, 1]],
      ["spendCapAmount", ["SOAP::SOAPDouble", XSD::QName.new(NsEntities, "SpendCapAmount")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsEntities, "StartDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfInsertionOrder,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
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
    :class => ApiBatchFault,
    :schema_name => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => BatchError,
    :schema_name => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
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
