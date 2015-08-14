module Fakes
  module FakeInfusionsoftApi
    def self.registered(app)
      preroute = '/infusionsoft'

      # infusionsoft fake api data
      app.post "#{preroute}/crm/xmlrpc/v1" do
        xml_body = request.body.read.to_s

        # return contact data
        if xml_body.include? "ContactService.load"
          json_response 200, 'contacts.xml', 'infusionsoft'
        # return company data
        elsif xml_body.include? "DataService.load"
          json_response 200, 'companies.xml', 'infusionsoft'
        # return invoice data
        elsif xml_body.include? "InvoiceService.getPayments"
          json_response 200, 'invoices.xml', 'infusionsoft'
        end
      end
    end

    def json_response(response_code, file_name, service)
      content_type :xml
      status response_code
      File.open(File.dirname(__FILE__) +"/#{service}/#{service}_data/" + file_name, 'xml').read
    end
  end
end
