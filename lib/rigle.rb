require 'rigle/version'
require 'rigle/array'

module Rigle
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ['Hello from Ruby on Rigle!']]
    end
  end
end
