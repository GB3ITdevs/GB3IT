class Rating < ActiveRecord::Base

  self.table_name = 'Ratings'
  self.primary_key = 'ratingId'

  belongs_to :Project,
	:foreign_key => 'Project'

  belongs_to :PersonInfo,
	:foreign_key  => 'infoId'
end
