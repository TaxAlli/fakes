module Fakes
  module FakeEmmaApi
    def self.registered(app)
      #preroute = '/myemma'

      # emma fake api data
      app.get "/:account/members" do
        json_response 200, 'members.json', 'emma'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end

