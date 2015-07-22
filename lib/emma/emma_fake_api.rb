module Fakes
  class FakeEmmaApi < OAuthFake
    # emma fake api data
    get '/:account/members' do
      emma_json_response 200, 'members.json'
    end
  end
end

