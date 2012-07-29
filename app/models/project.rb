class Project < ActiveRecord::Base
  
	attr_accessible :title,:client,:date_added,:brief,:solution,:outcome,:is_featured,:is_published,:project_type

	has_many :Images

end
