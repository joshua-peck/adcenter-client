require 'xsd/qname'

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOflong
class ArrayOflong < ::Array
end

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInvoiceInfo
class ArrayOfInvoiceInfo < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}InvoiceInfo
#   accountId - SOAP::SOAPLong
#   accountName - SOAP::SOAPString
#   accountNumber - SOAP::SOAPString
#   amount - SOAP::SOAPDouble
#   currencyCode - SOAP::SOAPString
#   invoiceDate - SOAP::SOAPDateTime
#   invoiceId - SOAP::SOAPLong
class InvoiceInfo
  attr_accessor :accountId
  attr_accessor :accountName
  attr_accessor :accountNumber
  attr_accessor :amount
  attr_accessor :currencyCode
  attr_accessor :invoiceDate
  attr_accessor :invoiceId

  def initialize(accountId = nil, accountName = nil, accountNumber = nil, amount = nil, currencyCode = nil, invoiceDate = nil, invoiceId = nil)
    @accountId = accountId
    @accountName = accountName
    @accountNumber = accountNumber
    @amount = amount
    @currencyCode = currencyCode
    @invoiceDate = invoiceDate
    @invoiceId = invoiceId
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInvoice
class ArrayOfInvoice < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}Invoice
#   data - SOAP::SOAPBase64
#   id - SOAP::SOAPLong
#   type - DataType
class Invoice
  attr_accessor :data
  attr_accessor :id
  attr_accessor :type

  def initialize(data = nil, id = nil, type = nil)
    @data = data
    @id = id
    @type = type
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}InsertionOrder
#   accountId - SOAP::SOAPLong
#   balanceAmount - SOAP::SOAPDouble
#   bookingCountryCode - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   endDate - SOAP::SOAPDateTime
#   insertionOrderId - SOAP::SOAPLong
#   lastModifiedByUserId - SOAP::SOAPLong
#   lastModifiedTime - SOAP::SOAPDateTime
#   notificationThreshold - SOAP::SOAPDouble
#   referenceId - SOAP::SOAPLong
#   spendCapAmount - SOAP::SOAPDouble
#   startDate - SOAP::SOAPDateTime
class InsertionOrder
  attr_accessor :accountId
  attr_accessor :balanceAmount
  attr_accessor :bookingCountryCode
  attr_accessor :comment
  attr_accessor :endDate
  attr_accessor :insertionOrderId
  attr_accessor :lastModifiedByUserId
  attr_accessor :lastModifiedTime
  attr_accessor :notificationThreshold
  attr_accessor :referenceId
  attr_accessor :spendCapAmount
  attr_accessor :startDate

  def initialize(accountId = nil, balanceAmount = nil, bookingCountryCode = nil, comment = nil, endDate = nil, insertionOrderId = nil, lastModifiedByUserId = nil, lastModifiedTime = nil, notificationThreshold = nil, referenceId = nil, spendCapAmount = nil, startDate = nil)
    @accountId = accountId
    @balanceAmount = balanceAmount
    @bookingCountryCode = bookingCountryCode
    @comment = comment
    @endDate = endDate
    @insertionOrderId = insertionOrderId
    @lastModifiedByUserId = lastModifiedByUserId
    @lastModifiedTime = lastModifiedTime
    @notificationThreshold = notificationThreshold
    @referenceId = referenceId
    @spendCapAmount = spendCapAmount
    @startDate = startDate
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}ArrayOfInsertionOrder
class ArrayOfInsertionOrder < ::Array
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# # {https://adcenter.microsoft.com/api/customermanagement/Exception}OperationError
# #   code - SOAP::SOAPInt
# #   details - SOAP::SOAPString
# #   message - SOAP::SOAPString
# class OperationError
#   attr_accessor :code
#   attr_accessor :details
#   attr_accessor :message
# 
#   def initialize(code = nil, details = nil, message = nil)
#     @code = code
#     @details = details
#     @message = message
#   end
# end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ArrayOfBatchError
class ArrayOfBatchError < ::Array
end

# # {https://adcenter.microsoft.com/api/customermanagement/Exception}BatchError
# #   code - SOAP::SOAPInt
# #   details - SOAP::SOAPString
# #   index - SOAP::SOAPInt
# #   message - SOAP::SOAPString
# class BatchError
#   attr_accessor :code
#   attr_accessor :details
#   attr_accessor :index
#   attr_accessor :message
# 
#   def initialize(code = nil, details = nil, index = nil, message = nil)
#     @code = code
#     @details = details
#     @index = index
#     @message = message
#   end
# end

# # {https://adapi.microsoft.com}ApplicationFault
# #   trackingId - SOAP::SOAPString
# class ApplicationFault
#   attr_accessor :trackingId
# 
#   def initialize(trackingId = nil)
#     @trackingId = trackingId
#   end
# end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
#   trackingId - SOAP::SOAPString
#   operationErrors - ArrayOfOperationError
class ApiFault < ::StandardError
  attr_accessor :trackingId
  attr_accessor :operationErrors

  def initialize(trackingId = nil, operationErrors = nil)
    @trackingId = trackingId
    @operationErrors = operationErrors
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiBatchFault
#   trackingId - SOAP::SOAPString
#   operationErrors - ArrayOfOperationError
#   batchErrors - ArrayOfBatchError
class ApiBatchFault < ::StandardError
  attr_accessor :trackingId
  attr_accessor :operationErrors
  attr_accessor :batchErrors

  def initialize(trackingId = nil, operationErrors = nil, batchErrors = nil)
    @trackingId = trackingId
    @operationErrors = operationErrors
    @batchErrors = batchErrors
  end
end

# # {https://adapi.microsoft.com}AdApiFaultDetail
# #   trackingId - SOAP::SOAPString
# #   errors - ArrayOfAdApiError
# class AdApiFaultDetail < ::StandardError
#   attr_accessor :trackingId
#   attr_accessor :errors
# 
#   def initialize(trackingId = nil, errors = nil)
#     @trackingId = trackingId
#     @errors = errors
#   end
# end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# # {https://adapi.microsoft.com}AdApiError
# #   code - SOAP::SOAPInt
# #   detail - SOAP::SOAPString
# #   errorCode - SOAP::SOAPString
# #   message - SOAP::SOAPString
# class AdApiError
#   attr_accessor :code
#   attr_accessor :detail
#   attr_accessor :errorCode
#   attr_accessor :message
# 
#   def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
#     @code = code
#     @detail = detail
#     @errorCode = errorCode
#     @message = message
#   end
# end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}DataType
class DataType < ::String
  Pdf = DataType.new("Pdf")
  Xml = DataType.new("Xml")
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoRequest
#   accountIds - ArrayOflong
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class GetInvoicesInfoRequest
  attr_accessor :accountIds
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(accountIds = nil, startDate = nil, endDate = nil)
    @accountIds = accountIds
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesInfoResponse
#   invoicesInfo - ArrayOfInvoiceInfo
class GetInvoicesInfoResponse
  attr_accessor :invoicesInfo

  def initialize(invoicesInfo = nil)
    @invoicesInfo = invoicesInfo
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesRequest
#   invoiceIds - ArrayOflong
#   type - DataType
class GetInvoicesRequest
  attr_accessor :invoiceIds
  attr_accessor :type

  def initialize(invoiceIds = nil, type = nil)
    @invoiceIds = invoiceIds
    @type = type
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInvoicesResponse
#   invoices - ArrayOfInvoice
class GetInvoicesResponse
  attr_accessor :invoices

  def initialize(invoices = nil)
    @invoices = invoices
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesRequest
#   invoiceIds - ArrayOflong
#   type - DataType
class GetDisplayInvoicesRequest
  attr_accessor :invoiceIds
  attr_accessor :type

  def initialize(invoiceIds = nil, type = nil)
    @invoiceIds = invoiceIds
    @type = type
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetDisplayInvoicesResponse
#   invoices - ArrayOfInvoice
class GetDisplayInvoicesResponse
  attr_accessor :invoices

  def initialize(invoices = nil)
    @invoices = invoices
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderRequest
#   insertionOrder - InsertionOrder
class AddInsertionOrderRequest
  attr_accessor :insertionOrder

  def initialize(insertionOrder = nil)
    @insertionOrder = insertionOrder
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}AddInsertionOrderResponse
#   insertionOrderId - SOAP::SOAPLong
#   createTime - SOAP::SOAPDateTime
class AddInsertionOrderResponse
  attr_accessor :insertionOrderId
  attr_accessor :createTime

  def initialize(insertionOrderId = nil, createTime = nil)
    @insertionOrderId = insertionOrderId
    @createTime = createTime
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderRequest
#   insertionOrder - InsertionOrder
class UpdateInsertionOrderRequest
  attr_accessor :insertionOrder

  def initialize(insertionOrder = nil)
    @insertionOrder = insertionOrder
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}UpdateInsertionOrderResponse
#   lastModifiedTime - SOAP::SOAPDateTime
class UpdateInsertionOrderResponse
  attr_accessor :lastModifiedTime

  def initialize(lastModifiedTime = nil)
    @lastModifiedTime = lastModifiedTime
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountRequest
#   accountId - SOAP::SOAPLong
#   insertionOrderIds - ArrayOflong
class GetInsertionOrdersByAccountRequest
  attr_accessor :accountId
  attr_accessor :insertionOrderIds

  def initialize(accountId = nil, insertionOrderIds = nil)
    @accountId = accountId
    @insertionOrderIds = insertionOrderIds
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetInsertionOrdersByAccountResponse
#   insertionOrders - ArrayOfInsertionOrder
class GetInsertionOrdersByAccountResponse
  attr_accessor :insertionOrders

  def initialize(insertionOrders = nil)
    @insertionOrders = insertionOrders
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesRequest
#   invoiceIds - ArrayOfstring
class GetKOHIOInvoicesRequest
  attr_accessor :invoiceIds

  def initialize(invoiceIds = nil)
    @invoiceIds = invoiceIds
  end
end

# {https://adcenter.microsoft.com/api/customerbilling}GetKOHIOInvoicesResponse
#   invoices - ArrayOfInvoice
class GetKOHIOInvoicesResponse
  attr_accessor :invoices

  def initialize(invoices = nil)
    @invoices = invoices
  end
end
