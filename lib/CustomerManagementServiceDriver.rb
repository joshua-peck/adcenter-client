require 'CustomerManagementService.rb'
require 'CustomerManagementServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module AdCenterWrapper

class ICustomerManagementService < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://sharedservices.adcenterapi.microsoft.com/Api/CustomerManagement/v8/CustomerManagementService.svc"

  Methods = [
    [ "GetAccountsInfo",
      "getAccountsInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountsInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountsInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "FindAccounts",
      "findAccounts",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "FindAccountsRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "FindAccountsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "AddAccount",
      "addAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "UpdateAccount",
      "updateAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetCustomer",
      "getCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "UpdateCustomer",
      "updateCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "SignupCustomer",
      "signupCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "SignupCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "SignupCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetAccount",
      "getAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetCustomersInfo",
      "getCustomersInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomersInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomersInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "AddUser",
      "addUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "AddUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "DeleteAccount",
      "deleteAccount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteAccountRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteAccountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "DeleteCustomer",
      "deleteCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "UpdateUser",
      "updateUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "UpdateUserRoles",
      "updateUserRoles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRolesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "UpdateUserRolesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetUser",
      "getUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetCurrentUser",
      "getCurrentUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCurrentUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCurrentUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "DeleteUser",
      "deleteUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteUserRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "DeleteUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetUsersInfo",
      "getUsersInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUsersInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetUsersInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetCustomerPilotFeature",
      "getCustomerPilotFeature",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerPilotFeatureRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetCustomerPilotFeatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetPilotFeaturesCountries",
      "getPilotFeaturesCountries",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetPilotFeaturesCountriesRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetPilotFeaturesCountriesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "GetAccessibleCustomer",
      "getAccessibleCustomer",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccessibleCustomerRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "GetAccessibleCustomerResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
    ],
    [ "FindAccountsOrCustomersInfo",
      "findAccountsOrCustomersInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "FindAccountsOrCustomersInfoRequest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adcenter.microsoft.com/api/customermanagement", "FindAccountsOrCustomersInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdCenterWrapper::ApiFaultFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"ApiFaultFault"}, "AdCenterWrapper::AdApiFaultDetailFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adcenter.microsoft.com/api/customermanagement", :namespace=>nil, :name=>"AdApiFaultDetailFault"}} }
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
