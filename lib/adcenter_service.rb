require 'adcenter_wrapper_entities'
require 'soap/header/simplehandler'

class AdCenterService
  attr_accessor :endpoint
  attr_accessor :service
  attr_accessor :service_namespace
  attr_accessor :required_credentials
  
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

  def initialize_authentication_headers(creds)
    @required_credentials.each do |key|
      self.headerhandler << HeaderHandler.new(@service_namespace, key, creds[key])
    end
  end

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