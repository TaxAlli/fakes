module Fakes
  module FakeQuickBooksOnlineApi
    def self.registered(app)
      preroute = '/quickbooks_online'

      # quickbooks_online fake invoices data
      app.get "#{preroute}/v3/company/:companyId/invoice/*" do
        json_response 200, 'invoices.json', 'quickbooks_online'
      end

      # quickbooks_online fake companies data
      app.get "#{preroute}/v3/company/:companyID/vendor/*" do
        json_response 200, 'companies.json', 'quickbooks_online'
      end

      # quickbooks_online fake categories data
      app.get "#{preroute}/v3/company/:companyID/account/*" do
        json_response 200, 'categories.json', 'quickbooks_online'
      end

      # quickbooks_online fake contacts data
      app.get "#{preroute}/v3/company/:companyId/customer/*" do
        json_response 200, 'customers.json', 'quickbooks_online'
      end

      # quickbooks_online fake bills data
      app.get "#{preroute}/v3/company/:companyID/bill/*" do
        json_response 200, 'bill.json', 'quickbooks_online'
      end

      # quickbooks_online fake purchases data
      app.get "#{preroute}/v3/company/:companyID/purchase/*" do
        json_response 200, 'purchase.json', 'quickbooks_online'
      end

      # quickbooks_online fake sales_receipts data
      app.get "#{preroute}/v3/company/:companyID/salesreceipt/*" do
        json_response 200, 'sales_receipt.json', 'quickbooks_online'
      end
    end

    def json_response
      raise NotImplementedError
    end
  end
end
