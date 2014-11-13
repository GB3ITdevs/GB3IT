class ContactInfo < ActiveRecord::Base

  self.table_name = 'ContactInfo'
  self.primary_key = 'contactID'

  has_one :Community,
	:foreign_key => 'postalCode'


end
