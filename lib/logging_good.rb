require "logging_good/version"

class Hash
  class Error < StandardError; end
  # Your code goes here...
  def logging_good
     @logger = ActiveSupport::Logger.new(STDOUT)
     @logger.info self
  end

end
