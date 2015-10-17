$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'fakes'
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

