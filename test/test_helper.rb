require 'rack/test'
require 'minitest/autorun'
require 'pry'

# Prefix the load path with our lib folder so we use the local, currently
# under development version of our gem.
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rigle'

class Minitest::Test
  include Rack::Test::Methods
end
