require "logging_good/version"
require "active_support/logger"
require 'colorize'

class Now
  def self.logging_good(params)
     @params = params
     logger = ActiveSupport::Logger.new(STDOUT)
     logger.info (@params.inspect).colorize(:green)
  end
end
