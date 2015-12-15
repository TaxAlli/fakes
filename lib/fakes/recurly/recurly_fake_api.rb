require 'fakes/yodlee/yodlee_fake_api'

module Fakes
  class RecurlyFake < Sinatra::Base

    post '/subscriptions' do
      xml_response(200, 'create_subscription.xml')
    end

    put '/subscriptions/:id/cancel' do
      xml_response(200, 'cancel_subscription.xml')
    end

    private

    def xml_response(response_code, file_name)
      content_type :xml
      status response_code
      File.open(File.dirname(__FILE__) + '/data/' + file_name, 'rb').read
    end
  end
end