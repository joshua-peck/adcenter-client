require 'NotificationService.rb'
require 'NotificationServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class INotificationService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://sharedservices.adcenterapi.microsoft.com/Api/Notification/v8/NotificationService.svc"

  Methods = [
    [ "GetNotifications",
      "getNotifications",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/notifications", "GetNotificationsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/notifications/Entities", "GetNotificationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/notifications", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/notifications", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetArchivedNotifications",
      "getArchivedNotifications",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/notifications", "GetArchivedNotificationsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/notifications/Entities", "GetArchivedNotificationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/notifications", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/notifications", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = NotificationServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = NotificationServiceMappingRegistry::LiteralRegistry
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
