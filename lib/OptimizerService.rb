require 'xsd/qname'

module AdCenterWrapper


# {https://adcenter.microsoft.com/v8}ArrayOfBatchError
class ArrayOfBatchError < ::Array
end

# {https://adcenter.microsoft.com/v8}BatchError
#   code - AdCenterWrapper::ErrorCodes
#   details - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   message - SOAP::SOAPString
class BatchError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :errorCode
  attr_accessor :index
  attr_accessor :message

  def initialize(code = nil, details = nil, errorCode = nil, index = nil, message = nil)
    @code = code
    @details = details
    @errorCode = errorCode
    @index = index
    @message = message
  end
end

# {https://adcenter.microsoft.com/v8}ArrayOfOperationError
class ArrayOfOperationError < ::Array
end

# {https://adcenter.microsoft.com/v8}OperationError
#   code - AdCenterWrapper::ErrorCodes
#   details - SOAP::SOAPString
#   errorCode - SOAP::SOAPString
#   message - SOAP::SOAPString
class OperationError
  attr_accessor :code
  attr_accessor :details
  attr_accessor :errorCode
  attr_accessor :message

  def initialize(code = nil, details = nil, errorCode = nil, message = nil)
    @code = code
    @details = details
    @errorCode = errorCode
    @message = message
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts.Entities}ArrayOfBudgetOpportunity
class ArrayOfBudgetOpportunity < ::Array
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts.Entities}Opportunity
#   expirationDate - SOAP::SOAPDateTime
#   opportunityKey - SOAP::SOAPString
class Opportunity
  attr_accessor :expirationDate
  attr_accessor :opportunityKey

  def initialize(expirationDate = nil, opportunityKey = nil)
    @expirationDate = expirationDate
    @opportunityKey = opportunityKey
  end
end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts.Entities}BudgetOpportunity
#   expirationDate - SOAP::SOAPDateTime
#   opportunityKey - SOAP::SOAPString
#   budgetDepletionDate - SOAP::SOAPDateTime
#   budgetType - AdCenterWrapper::BudgetLimitType
#   campaignId - SOAP::SOAPLong
#   currentBudget - SOAP::SOAPDouble
#   increaseInClicks - SOAP::SOAPInt
#   increaseInImpressions - SOAP::SOAPInt
#   percentageIncreaseInClicks - SOAP::SOAPInt
#   percentageIncreaseInImpressions - SOAP::SOAPInt
#   recommendedBudget - SOAP::SOAPDouble
class BudgetOpportunity < Opportunity
  attr_accessor :expirationDate
  attr_accessor :opportunityKey
  attr_accessor :budgetDepletionDate
  attr_accessor :budgetType
  attr_accessor :campaignId
  attr_accessor :currentBudget
  attr_accessor :increaseInClicks
  attr_accessor :increaseInImpressions
  attr_accessor :percentageIncreaseInClicks
  attr_accessor :percentageIncreaseInImpressions
  attr_accessor :recommendedBudget

  def initialize(expirationDate = nil, opportunityKey = nil, budgetDepletionDate = nil, budgetType = nil, campaignId = nil, currentBudget = nil, increaseInClicks = nil, increaseInImpressions = nil, percentageIncreaseInClicks = nil, percentageIncreaseInImpressions = nil, recommendedBudget = nil)
    @expirationDate = expirationDate
    @opportunityKey = opportunityKey
    @budgetDepletionDate = budgetDepletionDate
    @budgetType = budgetType
    @campaignId = campaignId
    @currentBudget = currentBudget
    @increaseInClicks = increaseInClicks
    @increaseInImpressions = increaseInImpressions
    @percentageIncreaseInClicks = percentageIncreaseInClicks
    @percentageIncreaseInImpressions = percentageIncreaseInImpressions
    @recommendedBudget = recommendedBudget
  end
end

# {https://adapi.microsoft.com}ApplicationFault
#   trackingId - SOAP::SOAPString
class ApplicationFault
  attr_accessor :trackingId

  def initialize(trackingId = nil)
    @trackingId = trackingId
  end
end

# {https://adcenter.microsoft.com/v8}ApiFaultDetail
#   trackingId - SOAP::SOAPString
#   batchErrors - AdCenterWrapper::ArrayOfBatchError
#   operationErrors - AdCenterWrapper::ArrayOfOperationError
class ApiFaultDetail < ::StandardError
  attr_accessor :trackingId
  attr_accessor :batchErrors
  attr_accessor :operationErrors

  def initialize(trackingId = nil, batchErrors = nil, operationErrors = nil)
    @trackingId = trackingId
    @batchErrors = batchErrors
    @operationErrors = operationErrors
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

# {http://schemas.microsoft.com/2003/10/Serialization/Arrays}ArrayOfstring
class ArrayOfstring < ::Array
end

# # {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts}BudgetLimitType
# class BudgetLimitType < ::String
#   DailyBudgetAccelerated = BudgetLimitType.new("DailyBudgetAccelerated")
#   DailyBudgetStandard = BudgetLimitType.new("DailyBudgetStandard")
#   MonthlyBudgetSpendUntilDepleted = BudgetLimitType.new("MonthlyBudgetSpendUntilDepleted")
# end

# {http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Shared.Api}ErrorCodes
class ErrorCodes < ::String
  APIExecutionError = ErrorCodes.new("APIExecutionError")
  AccountIdHasToBeSpecified = ErrorCodes.new("AccountIdHasToBeSpecified")
  ApiInputValidationError = ErrorCodes.new("ApiInputValidationError")
  CampaignBudgetAmountIsAboveLimit = ErrorCodes.new("CampaignBudgetAmountIsAboveLimit")
  CampaignBudgetAmountIsBelowConfiguredLimit = ErrorCodes.new("CampaignBudgetAmountIsBelowConfiguredLimit")
  CampaignBudgetAmountIsLessThanSpendAmount = ErrorCodes.new("CampaignBudgetAmountIsLessThanSpendAmount")
  CampaignBudgetLessThanAdGroupBudget = ErrorCodes.new("CampaignBudgetLessThanAdGroupBudget")
  CampaignDailyTargetBudgetAmountIsInvalid = ErrorCodes.new("CampaignDailyTargetBudgetAmountIsInvalid")
  ConcurrentRequestOverLimit = ErrorCodes.new("ConcurrentRequestOverLimit")
  CustomerIdHasToBeSpecified = ErrorCodes.new("CustomerIdHasToBeSpecified")
  EntityNotExistent = ErrorCodes.new("EntityNotExistent")
  FilterListOverLimit = ErrorCodes.new("FilterListOverLimit")
  FutureFeatureCode = ErrorCodes.new("FutureFeatureCode")
  IncrementalBudgetAmountRequiredForDayTarget = ErrorCodes.new("IncrementalBudgetAmountRequiredForDayTarget")
  InternalError = ErrorCodes.new("InternalError")
  InvalidAccount = ErrorCodes.new("InvalidAccount")
  InvalidAccountId = ErrorCodes.new("InvalidAccountId")
  InvalidCredentials = ErrorCodes.new("InvalidCredentials")
  InvalidCustomerId = ErrorCodes.new("InvalidCustomerId")
  InvalidDateObject = ErrorCodes.new("InvalidDateObject")
  InvalidOpportunityKey = ErrorCodes.new("InvalidOpportunityKey")
  InvalidOpportunityKeysList = ErrorCodes.new("InvalidOpportunityKeysList")
  InvalidVersion = ErrorCodes.new("InvalidVersion")
  NameTooLong = ErrorCodes.new("NameTooLong")
  NullArrayArgument = ErrorCodes.new("NullArrayArgument")
  NullParameter = ErrorCodes.new("NullParameter")
  NullRequest = ErrorCodes.new("NullRequest")
  OperationNotSupported = ErrorCodes.new("OperationNotSupported")
  OpportunityAlreadyApplied = ErrorCodes.new("OpportunityAlreadyApplied")
  OpportunityExpired = ErrorCodes.new("OpportunityExpired")
  OpportunityKeysArrayExceedsLimit = ErrorCodes.new("OpportunityKeysArrayExceedsLimit")
  OpportunityKeysArrayShouldNotBeNullOrEmpty = ErrorCodes.new("OpportunityKeysArrayShouldNotBeNullOrEmpty")
  QuotaNotAvailable = ErrorCodes.new("QuotaNotAvailable")
  RequestMissingHeaders = ErrorCodes.new("RequestMissingHeaders")
  TimestampNotMatch = ErrorCodes.new("TimestampNotMatch")
  UserIsNotAuthorized = ErrorCodes.new("UserIsNotAuthorized")
end

# {https://adcenter.microsoft.com/v8}GetBudgetOpportunitiesRequest
#   accountId - SOAP::SOAPLong
class GetBudgetOpportunitiesRequest
  attr_accessor :accountId

  def initialize(accountId = nil)
    @accountId = accountId
  end
end

# {https://adcenter.microsoft.com/v8}GetBudgetOpportunitiesResponse
#   opportunities - AdCenterWrapper::ArrayOfBudgetOpportunity
class GetBudgetOpportunitiesResponse
  attr_accessor :opportunities

  def initialize(opportunities = nil)
    @opportunities = opportunities
  end
end

# {https://adcenter.microsoft.com/v8}ApplyBudgetOpportunitiesRequest
#   accountId - SOAP::SOAPLong
#   opportunityKeys - AdCenterWrapper::ArrayOfstring
class ApplyBudgetOpportunitiesRequest
  attr_accessor :accountId
  attr_accessor :opportunityKeys

  def initialize(accountId = nil, opportunityKeys = nil)
    @accountId = accountId
    @opportunityKeys = opportunityKeys
  end
end

# {https://adcenter.microsoft.com/v8}ApplyBudgetOpportunitiesResponse
class ApplyBudgetOpportunitiesResponse
  def initialize
  end
end


end
