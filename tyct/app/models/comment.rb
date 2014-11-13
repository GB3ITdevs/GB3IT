class Comment < ActiveRecord::Base

  self.table_name = 'Comment'
  self.primary_key = 'commentID'

  belongs_to :PersonInfo,
	:foreign_key => 'infoID'
  belongs_to :Community,
	:foreign_key => 'postalCode'

end
