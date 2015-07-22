# emma_fake_api.rb

require 'sinatra'

  # emma fake token
  post '/oauth/token' do
    emma_json_response 200, 'access_token.json'
  end

  # emma auth
  get '/oauth/:authorize' do
    redirect 'http://taxalli-dev.ngrok.io/auth/myemma/callback'
  end

  # emma fake api data
  get '/:account/members' do
    emma_json_response 200, 'members.json'
  end

  def emma_json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/emma_data/' + file_name, 'rb').read
  end
  
  
  