module Fakes
  class OAuthFake < Sinatra::Base
    # fake token
    post '/oauth/:service/token' do
      #eventbrite_json_response 200, 'access_token.json'
      token_json_response 200, 'access_token.json', params[:service]
    end

    # auth
    get '/oauth/:service' do
      redirect 'http://taxalli-dev.ngrok.io/auth/:service/callback'
    end

    private

    def token_json_response(response_code, file_name, service)
      content_type :json
      status response_code
      File.open(File.dirname(__FILE__) + "#{service}_data" + file_name, 'rb').read
    end
  end
end