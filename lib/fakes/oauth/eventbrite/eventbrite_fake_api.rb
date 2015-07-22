module Fakes
  # eventbrite_fake_api.rb
  module FakeEventbriteApi

    def self.registered(app)
      # eventbrite fake api data
      app.get '/v3/users/me/' do
        json_response 200, 'user.json', 'eventbrite'
      end

      # get contact lists
      app.get '/users/:id/contact_lists' do
        json_response 200, 'contact_lists.json', 'eventbrite'
      end

      # get owned_events
      app.get '/users/:id/owned_events/' do
        json_response 200, 'owned_events.json', 'eventbrite'
      end

      # get orders
      app.get '/users/:id/orders/' do
        json_response 200, 'order.json', 'eventbrite'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end
