module Fakes
  module FakeYodleeApi
    def self.registered(app)
      #preroute = '/yodlee'

      # fake cob session token
      app.post '/services/srest/restserver/v1.0/authenticate/coblogin' do
        json_response 200, 'coblogin.json', 'yodlee'
      end

      # fake user session token
      app.post '/services/srest/restserver/v1.0/authenticate/login' do
        json_response 200, 'login.json', 'yodlee'
      end

      # fake add site account
      app.post '/services/srest/restserver/v1.0/jsonsdk/SiteAccountManagement/addSiteAccount1' do
        json_response 200, 'add_site_account_1_added.json', 'yodlee'
      end

      # fake get site refresh info
      app.post '/services/srest/restserver/v1.0/jsonsdk/Refresh/getSiteRefreshInfo' do
        json_response 200, 'get_site_refresh_info_added', 'yodlee'
      end

      app.post '/services/srest/restserver/v1.0/jsonsdk/SiteAccountManagement/removeSiteAccount' do
        json_response 200, 'remove_site_account.json', 'yodlee'
      end

      app.post '/services/srest/restserver/v1.0/jsonsdk/DataService/getItemSummariesForSite' do
        json_response 200, 'get_item_summaries_for_site.json', 'yodlee'
      end

      app.post '/jsonsdk/TransactionSearchService/executeUserSearchRequest' do

      end

    end

    def json_response
      raise NotImplementedError
    end
  end
end
