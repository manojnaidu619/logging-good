require "logging_good/version"
require 'terminal-table'

class Now

  #def self.logging_good(params=nil, req=nil, response=nil)
  def self.logging_good(*args)

    raise_error if args.empty? or args.count > 3

    args.each do |i|
        #raise_error(1) if i.class != ActionController::Parameters or i.class != ActionDispatch::Request
        if [ActionController::Parameters, ActionDispatch::Request].each{|j| j==i.class }
          parameters_table(i) if i.key?("controller")
          request_table(i) if i.key?("REQUEST_URI")
        else
          raise_error(1)
        end
    end

  end
end

private

def raise_error(line = 0)
  raise ArgumentError, 'Wrong number of Arguments (args = [params, request, response])' if line.eql?(0)
  raise TypeError, "Argument passed is not of type Hash" if line.eql?(1)
end

def generate_table(row_data, title)
  Terminal::Table.new :title => title, :rows => row_data
end

def parameters_table(params)
   rows = params
   table = generate_table(rows, "PARAMETERS")
   puts table
end

def request_table(request)
    req = request.env
    new_req = Hash.new
    new_req = {REQUEST_METHOD: req["REQUEST_METHOD"],
               REQUEST_URI: req["REQUEST_URI"],
               HTTP_REFERER: req["HTTP_REFERER"],
               HTTP_VERSION: req["HTTP_VERSION"],
               HTTP_ACCEPT: req["HTTP_ACCEPT"],
               HTTP_USER_AGENT: req["HTTP_USER_AGENT"],
               SERVER_NAME: req["SERVER_NAME"],
               SERVER_SOFTWARE: req["SERVER_SOFTWARE"]
              }
    table = generate_table(new_req, "REQUEST")
    puts table
end
