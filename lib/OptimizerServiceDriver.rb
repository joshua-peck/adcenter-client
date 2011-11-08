require 'OptimizerService.rb'
require 'OptimizerServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class IOptimizerService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adcenterapi.microsoft.com/Api/Advertiser/V8/Optimizer/OptimizerService.svc"

  Methods = [
    [ "GetBudgetOpportunities",
      "getBudgetOpportunities",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetBudgetOpportunitiesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetBudgetOpportunitiesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "ApplyBudgetOpportunities",
      "applyBudgetOpportunities",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "ApplyBudgetOpportunitiesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "ApplyBudgetOpportunitiesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = OptimizerServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = OptimizerServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
