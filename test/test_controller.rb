require_relative "test_helper"

class TestController < Carol::Controller

  def index
    "Hello!" # Not rendering a view
  end

end

class TestApp < Carol::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class CarolAppTest < Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    TestApp.new
  end

  def test_request
    get "/example/route"
    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end