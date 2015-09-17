module Fakes
  class YodleeAddSiteApiWrongCredAddedFake < YodleeFake

    # fake cob session token
    post '/services/srest/restserver/v1.0/authenticate/coblogin' do
      json_response 200, 'coblogin', 'yodlee'
    end

    # fake user session token
    post '/services/srest/restserver/v1.0/authenticate/login' do
      json_response 200, 'login', 'yodlee'
    end

    # fake add site account
    post '/services/srest/restserver/v1.0/jsonsdk/SiteAccountManagement/addSiteAccount1' do
      json_response 200, 'add_site_account_1_add_in_progress', 'yodlee'
    end

    # fake get site refresh info
    post '/services/srest/restserver/v1.0/jsonsdk/Refresh/getSiteRefreshInfo' do
      json_response 200, 'get_site_refresh_info_added', 'yodlee'
    end

    # fake update site account credentials
    post '/services/srest/restserver/v1.0/jsonsdk/SiteAccountManagement/updateSiteAccountCredentials' do
      json_response 200, 'update_site_account_credentials', 'yodlee'
    end

  end
end