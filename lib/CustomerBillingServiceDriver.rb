require 'adcenter_wrapper_entities'
require 'CustomerBillingServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class ICustomerBillingService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://sharedservices.adcenterapi.microsoft.com/Api/Billing/v7/CustomerBillingService.svc"

  Methods = [
    [ "GetInvoicesInfo",
      "getInvoicesInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInvoicesInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInvoicesInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::ApiBatchFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiBatchFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "GetInvoices",
      "getInvoices",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInvoicesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInvoicesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::ApiBatchFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiBatchFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "GetDisplayInvoices",
      "getDisplayInvoices",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetDisplayInvoicesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetDisplayInvoicesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::ApiBatchFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiBatchFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "AddInsertionOrder",
      "addInsertionOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "AddInsertionOrderRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "AddInsertionOrderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "UpdateInsertionOrder",
      "updateInsertionOrder",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "UpdateInsertionOrderRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "UpdateInsertionOrderResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "GetInsertionOrdersByAccount",
      "getInsertionOrdersByAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInsertionOrdersByAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetInsertionOrdersByAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ],
    [ "GetKOHIOInvoices",
      "getKOHIOInvoices",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetKOHIOInvoicesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customerbilling", "GetKOHIOInvoicesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}, "AdCenterWrapper::ApiBatchFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiBatchFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customerbilling"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = CustomerBillingServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = CustomerBillingServiceMappingRegistry::LiteralRegistry
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
