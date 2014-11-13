class User < ActiveRecord::Base

  self.table_name = 'User'
  self.primary_key = 'userId'

  has_one :PersonInfo,
	:foreign_key => 'infoId'

  has_one :ContactInfo,
	:foreign_key => 'contactId'

end
