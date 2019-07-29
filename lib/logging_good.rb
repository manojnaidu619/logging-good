require "logging_good/version"
require "active_support/logger"

class Now
  def self.logging_good(params)
     @params = params
     logger = ActiveSupport::Logger.new(STDOUT)
     logger.info "HERE : #{@params.inspect}"
  end
end
