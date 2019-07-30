RSpec.describe LoggingGood do

  it "has a version number" do
    expect(LoggingGood::VERSION).not_to be nil
  end

  it "checks for Now class" do
      expect(Now).to be_a_kind_of Class
  end

  it "checks for String class" do
      expect(String).to be_a_kind_of Class
  end

  it "Throw error if no arguments passed" do
     expect{ Now.logging_good()}.to raise_error(ArgumentError)
  end

  it "Throw error if more than 3 arguments passed" do
     expect{ Now.logging_good(1,2,3,4)}.to raise_error(ArgumentError)
  end

  it "Validates Passed Arguments" do
    now = Now.new
    expect{ now.send(:raise_error) }.to raise_error(ArgumentError)
    #now.thing.should == true
    #params = {"controller"=>"posts","action"=>"index","format"=>"json"}
    #expect(params).to have_key("controller")
  end
end

RSpec.describe Hash do

  context "Examine params attribute" do
    params = {"controller"=>"posts", "action"=>"index", "format"=>"json"}
    it "Check for params validity" do
      expect(params).to have_key("controller")
    end
    it "Calls error function" do
      if !params.key?("controller")
        expect{Now.new.send(:raise_error)}.to raise_error(ArgumentError)
      end
    end
    it "Calls table_creation method" do
      if params.key?("action")
        expect(Now.new.send(:generate_table, params, "DUMMY")).to be_truthy
      end
    end
  end

  context "Examine request attribute" do
    request = {"REQUEST_METHOD"=>"GET", "REQUEST_PATH"=>"/tasks.json",
                "REQUEST_URI"=>"/tasks.json", "HTTP_VERSION"=>"HTTP/1.1",
                "HTTP_HOST"=>"localhost:3000",
                "HTTP_USER_AGENT"=>"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0",
                "HTTP_ACCEPT"=>"application/json, text/plain, */*",
                "HTTP_ACCEPT_LANGUAGE"=>"en-US,en;q=0.5",
                "HTTP_ACCEPT_ENCODING"=>"gzip, deflate", "HTTP_REFERER"=>"http://localhost:3000/",
                "HTTP_CONNECTION"=>"keep-alive"}
    it "Check for request validity" do
      expect(request).to have_key("REQUEST_URI")
      expect(request).to have_key("REQUEST_METHOD")
      expect(request).to have_key("HTTP_REFERER")
      expect(request).to have_key("HTTP_VERSION")
      expect(request).to have_key("HTTP_ACCEPT")
      expect(request).to have_key("HTTP_CONNECTION")
    end
    it "Calls error function" do
      if !request.key?("REQUEST_URI")
        expect{Now.new.send(:raise_error)}.to raise_error(ArgumentError)
      end
    end
    it "Calls table_creation method" do
      if request.key?("HTTP_ACCEPT")
        expect(Now.new.send(:generate_table, request, "DUMMY")).to be_truthy
      end
    end
  end

  context "Examine response attribute" do
    response = {"X-Frame-Options"=>"SAMEORIGIN", "X-XSS-Protection"=>"1; mode=block",
                "X-Content-Type-Options"=>"nosniff", "X-Download-Options"=>"noopen",
                "X-Permitted-Cross-Domain-Policies"=>"none",
                "Referrer-Policy"=>"strict-origin-when-cross-origin"}
    it "Check for response validity" do
      expect(response).to have_key("X-Frame-Options")
      expect(response).to have_key("X-XSS-Protection")
      expect(response).to have_key("X-Content-Type-Options")
      expect(response).to have_key("X-Download-Options")
      expect(response).to have_key("Referrer-Policy")
    end
    it "Calls error function" do
      if !response.key?("Referrer-Policy")
        expect{Now.new.send(:raise_error)}.to raise_error(ArgumentError)
      end
    end
    it "Calls table_creation method" do
      if response.key?("Referrer-Policy")
        expect(Now.new.send(:generate_table, response, "DUMMY")).to be_truthy
      end
    end
  end
end

RSpec.describe LoggingGood do
  context "Examine Table Generation" do
    it "checks for table generation" do
      obj = {"foo"=>"bar"}
      expect( Now.new.send(:generate_table, obj, "PARAMETERS") ).to be_truthy
    end
  end
end

RSpec.describe String do
  context "Examine Blink function" do
    it "Testing Blink condition" do
      expect(String.new).to respond_to(:blink)
    end
  end
end
