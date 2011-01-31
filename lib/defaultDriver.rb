require 'adcenter_wrapper_entities'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class NotificationManagementSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adcenterapi.microsoft.com/Api/Advertiser/v6/NotificationManagement/NotificationManagement.asmx"

  Methods = [
    [ "http://adcenter.microsoft.com/syncapis/GetNotifications",
      "getNotifications",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetNotifications"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetNotificationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://adcenter.microsoft.com/syncapis/GetNotificationsByType",
      "getNotificationsByType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetNotificationsByType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetNotificationsByTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://adcenter.microsoft.com/syncapis/GetArchivedNotifications",
      "getArchivedNotifications",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetArchivedNotifications"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://adcenter.microsoft.com/syncapis", "GetArchivedNotificationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
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
