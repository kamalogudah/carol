require "carol/version"

module Carol
  # Your code goes here...
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
      ["Hello from Ruby on Carol!"]]
    end
  end
end
