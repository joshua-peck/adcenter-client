require 'soap/header/simplehandler'

class AdCenterService
  attr_accessor :endpoint
  attr_accessor :service

  def initialize(endpoint)
    @endpoint = endpoint
    initialize_service(@endpoint)
    # set options on service after it is built
    @service.wiredump_dev = STDERR if $DEBUG
    @service.options["protocol.http.ssl_config.verify_mode"] = nil
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
        warn "Generic SOAP fault '#{detail.exceptionDetail.message}' encountered.\n"
      end
    end
    res
  end

end