require 'adcenter_wrapper_entities'
require 'CustomerManagementServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class ICustomerManagementService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://sharedservices.adcenterapi.microsoft.com/Api/CustomerManagement/v7/CustomerManagementService.svc"

  Methods = [
    [ "GetAccountsInfo",
      "getAccountsInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountsInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountsInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "AddAccount",
      "addAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "UpdateAccount",
      "updateAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetCustomer",
      "getCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "UpdateCustomer",
      "updateCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "SignupCustomer",
      "signupCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "SignupCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "SignupCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetAccount",
      "getAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetCustomersInfo",
      "getCustomersInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomersInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomersInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "AddUser",
      "addUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "DeleteAccount",
      "deleteAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "DeleteCustomer",
      "deleteCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "UpdateUser",
      "updateUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "UpdateUserRoles",
      "updateUserRoles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRolesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRolesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetUser",
      "getUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "DeleteUser",
      "deleteUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetUsersInfo",
      "getUsersInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUsersInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUsersInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ],
    [ "GetCustomerPilotFeature",
      "getCustomerPilotFeature",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerPilotFeatureRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerPilotFeatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"ApiFaultFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:namespace=>nil, :encodingstyle=>"document", :name=>"AdApiFaultDetailFault", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = CustomerManagementServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = CustomerManagementServiceMappingRegistry::LiteralRegistry
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
