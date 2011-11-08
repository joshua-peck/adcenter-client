require 'adcenter_wrapper_entities'
require 'OptimizerService.rb'
require 'soap/mapping'

module AdCenterWrapper

module OptimizerServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAdapiMicrosoftCom = "https://adapi.microsoft.com"
  NsArrays = "http://schemas.microsoft.com/2003/10/Serialization/Arrays"
  NsMicrosoftAdCenterAdvertiserOptimizerApiDataContracts = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts"
  NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Advertiser.Optimizer.Api.DataContracts.Entities"
  NsMicrosoftAdCenterSharedApi = "http://schemas.datacontract.org/2004/07/Microsoft.AdCenter.Shared.Api"
  NsV8 = "https://adcenter.microsoft.com/v8"

  EncodedRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetOpportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ArrayOfBudgetOpportunity"),
    :schema_element => [
      ["budgetOpportunity", ["AdCenterWrapper::BudgetOpportunity[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetOpportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity"),
    :schema_basetype => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "Opportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]],
      ["budgetDepletionDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetDepletionDate")], [0, 1]],
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetType")], [0, 1]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CampaignId")], [0, 1]],
      ["currentBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CurrentBudget")], [0, 1]],
      ["increaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInClicks")], [0, 1]],
      ["increaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInImpressions")], [0, 1]],
      ["percentageIncreaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInClicks")], [0, 1]],
      ["percentageIncreaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInImpressions")], [0, 1]],
      ["recommendedBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "RecommendedBudget")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::Opportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "Opportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContracts, "BudgetLimitType")
  )

  EncodedRegistry.register(
    :class => AdCenterWrapper::ErrorCodes,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterSharedApi, "ErrorCodes")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_type => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_basetype => XSD::QName.new(NsAdapiMicrosoftCom, "ApplicationFault"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_type => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_type => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_type => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetOpportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ArrayOfBudgetOpportunity"),
    :schema_element => [
      ["budgetOpportunity", ["AdCenterWrapper::BudgetOpportunity[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetOpportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity"),
    :schema_basetype => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "Opportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]],
      ["budgetDepletionDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetDepletionDate")], [0, 1]],
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetType")], [0, 1]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CampaignId")], [0, 1]],
      ["currentBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CurrentBudget")], [0, 1]],
      ["increaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInClicks")], [0, 1]],
      ["increaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInImpressions")], [0, 1]],
      ["percentageIncreaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInClicks")], [0, 1]],
      ["percentageIncreaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInImpressions")], [0, 1]],
      ["recommendedBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "RecommendedBudget")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Opportunity,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "Opportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]]
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
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_type => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContracts, "BudgetLimitType")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ErrorCodes,
    :schema_type => XSD::QName.new(NsMicrosoftAdCenterSharedApi, "ErrorCodes")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBudgetOpportunitiesRequest,
    :schema_name => XSD::QName.new(NsV8, "GetBudgetOpportunitiesRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::GetBudgetOpportunitiesResponse,
    :schema_name => XSD::QName.new(NsV8, "GetBudgetOpportunitiesResponse"),
    :schema_element => [
      ["opportunities", ["AdCenterWrapper::ArrayOfBudgetOpportunity", XSD::QName.new(NsV8, "Opportunities")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApiFaultDetail,
    :schema_name => XSD::QName.new(NsV8, "ApiFaultDetail"),
    :schema_element => [
      ["trackingId", ["SOAP::SOAPString", XSD::QName.new(NsAdapiMicrosoftCom, "TrackingId")], [0, 1]],
      ["batchErrors", ["AdCenterWrapper::ArrayOfBatchError", XSD::QName.new(NsV8, "BatchErrors")], [0, 1]],
      ["operationErrors", ["AdCenterWrapper::ArrayOfOperationError", XSD::QName.new(NsV8, "OperationErrors")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBatchError,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfBatchError"),
    :schema_element => [
      ["batchError", ["AdCenterWrapper::BatchError[]", XSD::QName.new(NsV8, "BatchError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BatchError,
    :schema_name => XSD::QName.new(NsV8, "BatchError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["index", ["SOAP::SOAPInt", XSD::QName.new(NsV8, "Index")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfOperationError,
    :schema_name => XSD::QName.new(NsV8, "ArrayOfOperationError"),
    :schema_element => [
      ["operationError", ["AdCenterWrapper::OperationError[]", XSD::QName.new(NsV8, "OperationError")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::OperationError,
    :schema_name => XSD::QName.new(NsV8, "OperationError"),
    :schema_element => [
      ["code", ["AdCenterWrapper::ErrorCodes", XSD::QName.new(NsV8, "Code")], [0, 1]],
      ["details", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Details")], [0, 1]],
      ["errorCode", ["SOAP::SOAPString", XSD::QName.new(NsV8, "ErrorCode")], [0, 1]],
      ["message", ["SOAP::SOAPString", XSD::QName.new(NsV8, "Message")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplyBudgetOpportunitiesRequest,
    :schema_name => XSD::QName.new(NsV8, "ApplyBudgetOpportunitiesRequest"),
    :schema_element => [
      ["accountId", ["SOAP::SOAPLong", XSD::QName.new(NsV8, "AccountId")], [0, 1]],
      ["opportunityKeys", ["AdCenterWrapper::ArrayOfstring", XSD::QName.new(NsV8, "OpportunityKeys")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ApplyBudgetOpportunitiesResponse,
    :schema_name => XSD::QName.new(NsV8, "ApplyBudgetOpportunitiesResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfBudgetOpportunity,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ArrayOfBudgetOpportunity"),
    :schema_element => [
      ["budgetOpportunity", ["AdCenterWrapper::BudgetOpportunity[]", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetOpportunity,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetOpportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]],
      ["budgetDepletionDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetDepletionDate")], [0, 1]],
      ["budgetType", ["AdCenterWrapper::BudgetLimitType", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "BudgetType")], [0, 1]],
      ["campaignId", ["SOAP::SOAPLong", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CampaignId")], [0, 1]],
      ["currentBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "CurrentBudget")], [0, 1]],
      ["increaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInClicks")], [0, 1]],
      ["increaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "IncreaseInImpressions")], [0, 1]],
      ["percentageIncreaseInClicks", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInClicks")], [0, 1]],
      ["percentageIncreaseInImpressions", ["SOAP::SOAPInt", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "PercentageIncreaseInImpressions")], [0, 1]],
      ["recommendedBudget", ["SOAP::SOAPDouble", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "RecommendedBudget")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::Opportunity,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "Opportunity"),
    :schema_element => [
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "ExpirationDate")], [0, 1]],
      ["opportunityKey", ["SOAP::SOAPString", XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContractsEntities, "OpportunityKey")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::BudgetLimitType,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterAdvertiserOptimizerApiDataContracts, "BudgetLimitType")
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

  LiteralRegistry.register(
    :class => AdCenterWrapper::ErrorCodes,
    :schema_name => XSD::QName.new(NsMicrosoftAdCenterSharedApi, "ErrorCodes")
  )

  LiteralRegistry.register(
    :class => AdCenterWrapper::ArrayOfstring,
    :schema_name => XSD::QName.new(NsArrays, "ArrayOfstring"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )
end

end
