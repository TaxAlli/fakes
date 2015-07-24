module Fakes
  module FakeInfusionsoftApi
    def self.registered(app)
      preroute = '/infusionsoft'

      # infusionsoft fake api data
      app.get "#{preroute}/:account/members" do
        json_response 200, 'temp.json', 'infusionsoft'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end
