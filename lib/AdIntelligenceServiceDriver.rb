require 'AdIntelligenceService.rb'
require 'AdIntelligenceServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class IAdIntelligenceService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adcenterapi.microsoft.com/Api/Advertiser/V8/CampaignManagement/AdIntelligenceService.svc"

  Methods = [
    [ "GetPublisherKeywordPerformance",
      "getPublisherKeywordPerformance",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetPublisherKeywordPerformanceRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetPublisherKeywordPerformanceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "SuggestKeywordsForUrl",
      "suggestKeywordsForUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "SuggestKeywordsForUrlRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "SuggestKeywordsForUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetEstimatedBidByKeywordIds",
      "getEstimatedBidByKeywordIds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedBidByKeywordIdsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedBidByKeywordIdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetEstimatedPositionByKeywordIds",
      "getEstimatedPositionByKeywordIds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedPositionByKeywordIdsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedPositionByKeywordIdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetEstimatedBidByKeywords",
      "getEstimatedBidByKeywords",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedBidByKeywordsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedBidByKeywordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetEstimatedPositionByKeywords",
      "getEstimatedPositionByKeywords",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedPositionByKeywordsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetEstimatedPositionByKeywordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetHistoricalSearchCount",
      "getHistoricalSearchCount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetHistoricalSearchCountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetHistoricalSearchCountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "GetHistoricalKeywordPerformance",
      "getHistoricalKeywordPerformance",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetHistoricalKeywordPerformanceRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "GetHistoricalKeywordPerformanceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ],
    [ "SuggestKeywordsFromExistingKeywords",
      "suggestKeywordsFromExistingKeywords",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "SuggestKeywordsFromExistingKeywordsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/v8", "SuggestKeywordsFromExistingKeywordsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"AdApiFaultDetailFault"}, "AdCenterWrapper::ApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/v8", :namespace=>nil, :name=>"ApiFaultDetailFault"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = AdIntelligenceServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = AdIntelligenceServiceMappingRegistry::LiteralRegistry
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
