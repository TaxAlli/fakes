require "fakes/version"
require 'sinatra/base'
require 'fakes/oauth_fake'

module Fakes

  SUPPORTED_SERVICES = %w( eventbrite emma quickbooks_online infusionsoft )

  def self.run_all!
    Fakes::OAuthFake.run!
  end
end


#Fakes::FakeEmmaApi.run!