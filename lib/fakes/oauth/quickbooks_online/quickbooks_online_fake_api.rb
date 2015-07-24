module Fakes
  module FakeQuickBooksOnlineApi
    def self.registered(app)
      preroute = '/quickbooks_online'

      # quickbooks_online fake api data
      app.get "#{preroute}/:account/members" do
        json_response 200, 'temp.json', 'quickbooks_online'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end
