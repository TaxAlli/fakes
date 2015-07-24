module Fakes
  # eventbrite_fake_api.rb
  module FakeEventbriteApi

    def self.registered(app)

      # get organizers
      app.get '/v3/users/:id/organizers' do
        json_response 200, 'organizers.json', 'eventbrite'
      end

      # get owned_event_orders and attendees
      app.get '/v3/users/:id/owned_event_orders/*' do
        json_response 200, 'owned_event_orders.json', 'eventbrite'
      end

    end

    def json_response
      raise NotImplementedError
    end
  end
end
