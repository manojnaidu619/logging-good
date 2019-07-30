require "logging_good/version"
require 'colorize'
require 'terminal-table'

class Now

  def self.logging_good(params)
     rows = params
     #logger = ActiveSupport::Logger.new(STDOUT)
     #logger.info (@params.inspect).colorize(:green)
     table = Terminal::Table.new :rows => rows
     puts table
     #puts (@params.inspect).colorize(:green)

     #puts @params["controller"]
  end

end
