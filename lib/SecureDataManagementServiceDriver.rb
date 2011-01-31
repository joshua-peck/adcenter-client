require 'adcenter_wrapper_entities'
require 'SecureDataManagementServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class ISecureDataManagementService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://securityservices.adcenterapi.microsoft.com/Api/SecureDataManagement/v7/SecureDataManagementService.svc"

  Methods = [
    [ "AddPaymentMethod",
      "addPaymentMethod",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/securedatamanagement", "AddPaymentMethodRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/securedatamanagement", "AddPaymentMethodResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/securedatamanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/securedatamanagement"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = SecureDataManagementServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = SecureDataManagementServiceMappingRegistry::LiteralRegistry
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
