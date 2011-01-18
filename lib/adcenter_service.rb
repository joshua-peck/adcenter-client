class AdCenterClientException << Exception 
  
class AdCenterService
  
  def method_missing(method, *args)
    begin
      res = eval "self.#{method}(*args)"
      raise AdCenterClientException.new(method, res.errors) if res.respond_to?(:errors) && ! res.errors.nil?
    rescue SOAP::FaultError => fault
      msg = "#{method} Call Failed: [#{fault.faultcode.to_s}]#{fault.faultstring.to_s}"
      $stderr.puts(msg)
    end
    
    res
  end
  
  class HeaderHandler < SOAP::Header::SimpleHandler
    attr_reader :tag
    attr_writer :value
    def initialize(tag, value)
      super(XSD::QName.new(nil, tag))
      @tag = tag
      @value = value
    end
    def on_simple_outbound
      @value
    end
  end

  class Credentials
    attr_reader :handlers
    def initialize(credentials)
      @handlers = Array.new
      credentials.each_pair do |key, value|
        @handlers << HeaderHandler.new(key, value) 
      end
    end
    def setHeader(header, value)
      handlers.each do |handler|
        if handler.tag == header then
          handler.value = value
        end
      end
    end
  end  
end