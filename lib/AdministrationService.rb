require 'xsd/qname'

module AdCenterWrapper


# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

# {https://adapi.microsoft.com}AdApiFaultDetail
#   trackingId - SOAP::SOAPString
#   errors - AdCenterWrapper::ArrayOfAdApiError
class AdApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :errors

  def initialize(trackingId = nil, errors = nil)
    @trackingId = trackingId
    @errors = errors
  end
end

# {https://adapi.microsoft.com}ArrayOfAdApiError
class ArrayOfAdApiError < ::Array
end

# {https://adapi.microsoft.com}AdApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class AdApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, detail = nil, errorCode = nil, message = nil)
    @code = code
    @detail = detail
    @errorCode = errorCode
    @message = message
  end
end

# {https://adcenter.microsoft.com/v8}GetAssignedQuotaRequest
class GetAssignedQuotaRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetAssignedQuotaResponse
#   assignedQuota - SOAP::SOAPLong
class GetAssignedQuotaResponse
  attr_accessor :assignedQuota

  def initialize(assignedQuota = nil)
    @assignedQuota = assignedQuota
  end
end

# {https://adcenter.microsoft.com/v8}GetRemainingQuotaRequest
class GetRemainingQuotaRequest
  def initialize
  end
end

# {https://adcenter.microsoft.com/v8}GetRemainingQuotaResponse
#   remainingQuota - SOAP::SOAPLong
class GetRemainingQuotaResponse
  attr_accessor :remainingQuota

  def initialize(remainingQuota = nil)
    @remainingQuota = remainingQuota
  end
end


end
