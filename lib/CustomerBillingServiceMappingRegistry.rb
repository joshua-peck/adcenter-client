require 'adcenter_wrapper_entities'
require 'CustomerBillingService.rb'
require 'soap/mapping'

module AdCenterWrapper

module CustomerBillingServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsC_Exception = "https://adcenter.microsoft.com/api/customermanagement/Exception"
  NsCustomerbilling = "https://adcenter.microsoft.com/api/customerbilling"
  NsEntities = "https://adcenter.microsoft.com/api/customermanagement/Entities"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
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
    :class => AdCenterWrapper::ArrayOfInvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["AdCenterWrapper::InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::InvoiceInfo,
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
    :class => AdCenterWrapper::ArrayOfInvoice,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["AdCenterWrapper::Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Invoice,
    :schema_type => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["AdCenterWrapper::DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::InsertionOrder,
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
    :class => AdCenterWrapper::ArrayOfInsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["AdCenterWrapper::InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiBatchFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_basetype => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
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
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
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
    :class => AdCenterWrapper::DataType,
    :schema_type => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOflong,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOflong"),
    :schema_element => [
      ["long", "SOAP::SOAPLong[]", [0, nil]]
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
    :class => AdCenterWrapper::ArrayOfInvoiceInfo,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["AdCenterWrapper::InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::InvoiceInfo,
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
    :class => AdCenterWrapper::ArrayOfInvoice,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["AdCenterWrapper::Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Invoice,
    :schema_type => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["AdCenterWrapper::DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::InsertionOrder,
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
    :class => AdCenterWrapper::ArrayOfInsertionOrder,
    :schema_type => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["AdCenterWrapper::InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiBatchFault,
    :schema_type => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_basetype => XSD::QName.new(NsC_Exception, "ApiFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
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
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_type => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
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
    :class => AdCenterWrapper::DataType,
    :schema_type => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInvoicesInfoRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesInfoRequest"),
    :schema_element => [
      ["accountIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomerbilling, "AccountIds")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "StartDate")], [0, 1]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "EndDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInvoicesInfoResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesInfoResponse"),
    :schema_element => [
      ["invoicesInfo", ["AdCenterWrapper::ArrayOfInvoiceInfo", XSD::QName.new(NsCustomerbilling, "InvoicesInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]],
      ["type", ["AdCenterWrapper::DataType", XSD::QName.new(NsCustomerbilling, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInvoicesResponse"),
    :schema_element => [
      ["invoices", ["AdCenterWrapper::ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDisplayInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetDisplayInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]],
      ["type", ["AdCenterWrapper::DataType", XSD::QName.new(NsCustomerbilling, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetDisplayInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetDisplayInvoicesResponse"),
    :schema_element => [
      ["invoices", ["AdCenterWrapper::ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddInsertionOrderRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "AddInsertionOrderRequest"),
    :schema_element => [
      ["insertionOrder", ["AdCenterWrapper::InsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::AddInsertionOrderResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "AddInsertionOrderResponse"),
    :schema_element => [
      ["insertionOrderId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomerbilling, "InsertionOrderId")], [0, 1]],
      ["createTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "CreateTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateInsertionOrderRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "UpdateInsertionOrderRequest"),
    :schema_element => [
      ["insertionOrder", ["AdCenterWrapper::InsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrder")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::UpdateInsertionOrderResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "UpdateInsertionOrderResponse"),
    :schema_element => [
      ["lastModifiedTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "LastModifiedTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInsertionOrdersByAccountRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInsertionOrdersByAccountRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomerbilling, "AccountId")], [0, 1]],
      ["insertionOrderIds", ["AdCenterWrapper::ArrayOflong", XSD::QName.new(NsCustomerbilling, "InsertionOrderIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetInsertionOrdersByAccountResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetInsertionOrdersByAccountResponse"),
    :schema_element => [
      ["insertionOrders", ["AdCenterWrapper::ArrayOfInsertionOrder", XSD::QName.new(NsCustomerbilling, "InsertionOrders")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKOHIOInvoicesRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetKOHIOInvoicesRequest"),
    :schema_element => [
      ["invoiceIds", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsCustomerbilling, "InvoiceIds")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetKOHIOInvoicesResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetKOHIOInvoicesResponse"),
    :schema_element => [
      ["invoices", ["AdCenterWrapper::ArrayOfInvoice", XSD::QName.new(NsCustomerbilling, "Invoices")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountMonthlySpendRequest,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetAccountMonthlySpendRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsCustomerbilling, "AccountId")], [0, 1]],
      ["monthYear", ["SOAP::SOAPDateTime", XSD::QName.new(NsCustomerbilling, "MonthYear")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetAccountMonthlySpendResponse,
    :schema_name => XSD::QName.new(NsCustomerbilling, "GetAccountMonthlySpendResponse"),
    :schema_element => [
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsCustomerbilling, "Amount")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfInvoiceInfo,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInvoiceInfo"),
    :schema_element => [
      ["invoiceInfo", ["AdCenterWrapper::InvoiceInfo[]", XSD::QName.new(NsEntities, "InvoiceInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::InvoiceInfo,
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
    :class => AdCenterWrapper::DataType,
    :schema_name => XSD::QName.new(NsEntities, "DataType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfInvoice,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInvoice"),
    :schema_element => [
      ["invoice", ["AdCenterWrapper::Invoice[]", XSD::QName.new(NsEntities, "Invoice")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Invoice,
    :schema_name => XSD::QName.new(NsEntities, "Invoice"),
    :schema_element => [
      ["data", ["SOAP::SOAPBase64", XSD::QName.new(NsEntities, "Data")], [0, 1]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(NsEntities, "Id")], [0, 1]],
      ["type", ["AdCenterWrapper::DataType", XSD::QName.new(NsEntities, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::InsertionOrder,
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
    :class => AdCenterWrapper::ArrayOfInsertionOrder,
    :schema_name => XSD::QName.new(NsEntities, "ArrayOfInsertionOrder"),
    :schema_element => [
      ["insertionOrder", ["AdCenterWrapper::InsertionOrder[]", XSD::QName.new(NsEntities, "InsertionOrder")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiBatchFault,
    :schema_name => XSD::QName.new(NsC_Exception, "ApiBatchFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsC_Exception, "OperationErrors")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsC_Exception, "BatchErrors")], [0, 1]]
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

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsC_Exception, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsC_Exception, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_name => XSD::QName.new(NsC_Exception, "BatchError"),
    :schema_element => [
      ["code", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Details")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsC_Exception, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsC_Exception, "Message")], [0, 1]]
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
    :class => AdCenterWrapper::AdApiFaultDetail,
    :schema_name => XSD::QName.new(NsAdapiMicrosoftCom, "AdApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["errors", ["AdCenterWrapper::ArrayOfAdApiError", XSD::QName.new(NsAdapiMicrosoftCom, "Errors")], [0, 1]]
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
end

end
