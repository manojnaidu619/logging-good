require "logging_good/version"
require "active_support/logger"

class Hash
  class Error < StandardError; end

  def logging_good
     logger = ActiveSupport::Logger.new(STDOUT)
     logger.info self.to_a
  end

end
