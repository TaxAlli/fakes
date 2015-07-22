# eventbrite_fake_api.rb

  # eventbrite fake token
  post '/oauth/token' do
    eventbrite_json_response 200, 'access_token.json'
  end

  # eventbrite auth
  get '/oauth/:authorize' do
    redirect 'http://taxalli-dev.ngrok.io/auth/eventbrite/callback'
  end

  # eventbrite fake api data
  get '/v3/users/me/' do
    eventbrite_json_response 200, 'user.json'
  end
  
  # get contact lists
  get '/users/:id/contact_lists/' do
    eventbrite_json_response 200, 'contact_lists.json'
  end

  # get owned_events
  get '/users/:id/owned_events/' do
    eventbrite_json_response 200, 'owned_events.json'
  end
  
  # get orders
  get '/users/:id/orders/' do
    eventbrite_json_response 200, 'order.json'
  end

  def eventbrite_json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/eventbrite_data/' + file_name, 'rb').read
  end
  
  
  