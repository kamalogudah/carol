require "carol/version"

module Carol
  # Your code goes here...
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
      ["Hello from Ruby on Carol!"]]
    end
  end
end
