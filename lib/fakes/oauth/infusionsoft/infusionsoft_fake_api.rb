module Fakes
  module FakeInfusionsoftApi
    def self.registered(app)
      #preroute = '/infusionsoft'

      # infusionsoft fake api data
      app.post "/crm/xmlrpc/v1" do
        xml_body = request.body.read.to_s

        if xml_body.include? 'ContactService.load'
          xml_response 200, 'contacts.xml', 'infusionsoft'
          # return company data
        elsif xml_body.include? 'DataService.load'
          xml_response 200, 'companies.xml', 'infusionsoft'
          # return invoice data
        elsif xml_body.include? 'InvoiceService.getPayments'
          xml_response 200, 'invoices.xml', 'infusionsoft'
        elsif xml_body.include? 'DataService.query'
          xml_response 200, 'data_service_query.xml', 'infusionsoft'
        elsif xml_body.include? 'ContactService.addWithDupCheck'
          xml_response 200, 'contact_service_add_with_dup_check.xml', 'infusionsoft'
        elsif xml_body.include? 'DataService.update'
          xml_response 200, 'data_service_update.xml', 'infusionsoft'
        else
          xml_response 200, 'data_service_update.xml', 'infusionsoft'
        end
      end
    end
  end
end
