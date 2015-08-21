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
          request_body = request.body.read.to_s
          if request_body.include? "16441"
            json_response 200, 'add_site_account_1_added.json', 'yodlee'
          elsif request_body.include? "16486"
            json_response 200, 'add_site_account_1_added_mfa', 'yodlee'
          end
      end

      # fake get site refresh info
      app.post '/services/srest/restserver/v1.0/jsonsdk/Refresh/getSiteRefreshInfo' do
        json_response 200, 'get_site_refresh_info_added', 'yodlee'
      end

      # fake remove site account
      app.post '/services/srest/restserver/v1.0/jsonsdk/SiteAccountManagement/removeSiteAccount' do
        json_response 200, 'remove_site_account.json', 'yodlee'
      end

      # fake get item summaries for site
      app.post '/services/srest/restserver/v1.0/jsonsdk/DataService/getItemSummariesForSite' do
        json_response 200, 'get_item_summaries_for_site.json', 'yodlee'
      end

      # fake execute user search request
      app.post '/services/srest/restserver/v1.0/jsonsdk/TransactionSearchService/executeUserSearchRequest' do
        json_response 200, 'execute_user_search_request', 'yodlee'
      end

      # fake get MFA response for site
      app.post '/services/srest/restserver/v1.0/jsonsdk/Refresh/getMFAResponseForSite' do
        json_response 200, 'get_mfa_response_for_site', 'yodlee'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end

