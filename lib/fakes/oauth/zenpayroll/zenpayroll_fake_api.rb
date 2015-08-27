module Fakes
  module FakeZenpayrollApi
    def self.registered(app)
      #preroute = '/zenpayroll'

      # fake payroll for a company
      app.get '/api/v1/companies/:id/payrolls' do
        json_response 200, 'payrolls', 'zenpayroll'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end

