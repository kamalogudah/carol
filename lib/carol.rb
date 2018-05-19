require "carol/version"
require "carol/array"
require "carol/routing"
require "carol/util"
require "carol/dependencies"
require "carol/controller"
require "carol/file_model"

module Carol
  # Your code goes here...
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
      [text]]
    end
  end
end
