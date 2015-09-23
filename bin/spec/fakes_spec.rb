require 'spec_helper'

describe Fakes do

  def app
    Fakes::OAuthFake
  end


  it 'has a version number' do
    expect(Fakes::VERSION).not_to be nil
  end

  it "returns an access token for eventbrite" do
    post 'oauth/eventbrite/token'
    last_response.should be_ok
  end

  it "returns an access token for emma" do
    post 'oauth/emma/token'
    last_response.should be_ok
  end

  it "returns an access token for zenpayroll" do
    post 'oauth/zenpayroll/token'
    last_response.should be_ok
  end

  it "zenpayroll me request works" do
    get 'api/v1/me'
    last_response.should be_ok
  end

end
