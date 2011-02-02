require 'adcenter_wrapper_entities'
require 'soap/header/simplehandler'

# Parent class for individual adCenter service classes
class AdCenterService
  # the endpoint to use when connecting to this service
  attr_accessor :endpoint
  # the actual SOAP::RPC::Driver for the service
  attr_accessor :service
  # sets the namespace to be used in service headers
  attr_accessor :service_namespace
  # array of header fields required by the service
  attr_accessor :required_credentials
  
  # list of required header fields for most services
  DEFAULT_REQUIRED_CREDENTIALS = %w[ ApplicationToken CustomerAccountId CustomerId UserName Password DeveloperToken ]

  def initialize(endpoint, credentials)
    @service_namespace = 'https://adcenter.microsoft.com/v7'
    @required_credentials = DEFAULT_REQUIRED_CREDENTIALS
    @endpoint = endpoint
    initialize_service(@endpoint)
    initialize_authentication_headers(credentials)
    # set options on service after it is built
    @service.wiredump_dev = STDERR if $DEBUG
    @service.options["protocol.http.ssl_config.verify_mode"] = nil
  end

  # sets up authentication header handlers
  def initialize_authentication_headers(creds)
    @required_credentials.each do |key|
      self.headerhandler << HeaderHandler.new(@service_namespace, key, creds[key])
    end
  end

  # initializes the SOAP::RPC::Driver and does per-service configuration
  def initialize_service
    raise NotImplementedError.new("children of AdCenterService must implement #{__method__}")
  end

  # passes the calls to our service to the SOAP::RPC::driver version of the
  # service as defined in @service
  def method_missing(method, *args)
    begin
      res = eval "@service.#{method}(*args)"
      raise AdCenterClientException.new(method, res.errors) if res.respond_to?(:errors) && ! res.errors.nil?
    rescue SOAP::FaultError => fault
      detail = fault.detail
      if detail.respond_to?(:adApiFaultDetail)
        detail.adApiFaultDetail.errors.each do |r|
          msg = sprintf("*** SOAP Fault found in '%s()': [%d] %s -- %s", method, r.code, r.errorCode, r.message)
          warn msg
        end
      # TODO: test apiFaultDetail
      elsif detail.respond_to?('apiFaultDetail')
        operationErrors = detail.operationErrors.operationError
        if !operationErrors.respond_to?('each')
          operationErrors = [operationErrors]
        end
        operationErrors.each do |opError|
          warn "Operation error '#{opError.message}' (#{opError.code}) encountered.\n"
        end
      # TODO: test generic SOAP error handling
      else
        if String == detail.class
          warn fault.to_s
        else
          warn "Generic SOAP fault '#{detail.exceptionDetail.message}' encountered.\n"
        end
      end
    end
    res
  end
  
  class HeaderHandler < SOAP::Header::SimpleHandler
    attr_reader :element
    attr_writer :value
    def initialize(ns, element, value)
      super(XSD::QName.new(ns, element))
      @element = element
      @value = value
    end
    def on_simple_outbound
      @value
    end
  end

end