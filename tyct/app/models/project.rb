class Project < ActiveRecord::Base

  self.table_name = 'Project'
  self.primary_key = 'projectId'

  belongs_to :Community,
	:foreign_key => 'postalCode'

end
