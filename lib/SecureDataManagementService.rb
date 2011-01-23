require 'xsd/qname'

# {https://adcenter.microsoft.com/api/customermanagement/Entities}PaymentMethod
#   address - Address
#   customerId - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   timeStamp - SOAP::SOAPBase64
class PaymentMethod
  attr_accessor :address
  attr_accessor :customerId
  attr_accessor :id
  attr_accessor :timeStamp

  def initialize(address = nil, customerId = nil, id = nil, timeStamp = nil)
    @address = address
    @customerId = customerId
    @id = id
    @timeStamp = timeStamp
  end
end

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CreditCardPaymentMethod
#   address - Address
#   customerId - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   timeStamp - SOAP::SOAPBase64
#   expirationDate - SOAP::SOAPLong
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   middleInitial - SOAP::SOAPString
#   number - SOAP::SOAPString
#   securityCode - SOAP::SOAPString
#   type - CreditCardType
class CreditCardPaymentMethod < PaymentMethod
  attr_accessor :address
  attr_accessor :customerId
  attr_accessor :id
  attr_accessor :timeStamp
  attr_accessor :expirationDate
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :middleInitial
  attr_accessor :number
  attr_accessor :securityCode
  attr_accessor :type

  def initialize(address = nil, customerId = nil, id = nil, timeStamp = nil, expirationDate = nil, firstName = nil, lastName = nil, middleInitial = nil, number = nil, securityCode = nil, type = nil)
    @address = address
    @customerId = customerId
    @id = id
    @timeStamp = timeStamp
    @expirationDate = expirationDate
    @firstName = firstName
    @lastName = lastName
    @middleInitial = middleInitial
    @number = number
    @securityCode = securityCode
    @type = type
  end
end

# # {https://adcenter.microsoft.com/api/customermanagement/Entities}Address
# #   city - SOAP::SOAPString
# #   countryCode - SOAP::SOAPString
# #   id - SOAP::SOAPLong
# #   line1 - SOAP::SOAPString
# #   line2 - SOAP::SOAPString
# #   line3 - SOAP::SOAPString
# #   line4 - SOAP::SOAPString
# #   postalCode - SOAP::SOAPString
# #   stateOrProvince - SOAP::SOAPString
# #   timeStamp - SOAP::SOAPBase64
# class Address
#   attr_accessor :city
#   attr_accessor :countryCode
#   attr_accessor :id
#   attr_accessor :line1
#   attr_accessor :line2
#   attr_accessor :line3
#   attr_accessor :line4
#   attr_accessor :postalCode
#   attr_accessor :stateOrProvince
#   attr_accessor :timeStamp
# 
#   def initialize(city = nil, countryCode = nil, id = nil, line1 = nil, line2 = nil, line3 = nil, line4 = nil, postalCode = nil, stateOrProvince = nil, timeStamp = nil)
#     @city = city
#     @countryCode = countryCode
#     @id = id
#     @line1 = line1
#     @line2 = line2
#     @line3 = line3
#     @line4 = line4
#     @postalCode = postalCode
#     @stateOrProvince = stateOrProvince
#     @timeStamp = timeStamp
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

# # {https://adcenter.microsoft.com/api/customermanagement/Exception}ApiFault
# #   trackingId - SOAP::SOAPString
# #   operationErrors - ArrayOfOperationError
# class ApiFault < ::StandardError
#   attr_accessor :trackingId
#   attr_accessor :operationErrors
# 
#   def initialize(trackingId = nil, operationErrors = nil)
#     @trackingId = trackingId
#     @operationErrors = operationErrors
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

# {https://adcenter.microsoft.com/api/customermanagement/Entities}CreditCardType
class CreditCardType < ::String
  AmericanExpress = CreditCardType.new("AmericanExpress")
  Mastercard = CreditCardType.new("Mastercard")
  Visa = CreditCardType.new("Visa")
end

# {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodRequest
#   paymentMethod - PaymentMethod
class AddPaymentMethodRequest
  attr_accessor :paymentMethod

  def initialize(paymentMethod = nil)
    @paymentMethod = paymentMethod
  end
end

# {https://adcenter.microsoft.com/api/securedatamanagement}AddPaymentMethodResponse
#   paymentMethodId - SOAP::SOAPLong
class AddPaymentMethodResponse
  attr_accessor :paymentMethodId

  def initialize(paymentMethodId = nil)
    @paymentMethodId = paymentMethodId
  end
end
