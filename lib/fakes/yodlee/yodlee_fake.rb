require 'fakes/yodlee/yodlee_fake_api'

module Fakes
  class YodleeFake < Sinatra::Base
    register FakeYodleeApi

    protected

    def json_response(response_code, file_name, service)
      content_type :json
      status response_code
      File.open(File.dirname(__FILE__) +"/#{service}_data/" + file_name, 'rb').read
    end
  end
end