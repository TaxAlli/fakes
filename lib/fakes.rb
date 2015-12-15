require "fakes/version"
require 'sinatra/base'
require 'fakes/oauth/oauth_fake'
require 'fakes/yodlee/yodlee_fake'
require 'fakes/yodlee/yodlee_add_site_api_wrong_cred_added_failure_fake'
require 'fakes/yodlee/yodlee_add_site_api_wrong_cred_added_fake'
require 'fakes/recurly/recurly_fake_api'

module Fakes

  SUPPORTED_SERVICES = %w( eventbrite emma quickbooks_online infusionsoft yodlee)

  def self.run_all!
    Fakes::OAuthFake.run!
  end
end


#Fakes::FakeEmmaApi.run!