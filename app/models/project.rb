class Project < ActiveRecord::Base
  
	attr_accessible   	:title,
                		:client,
                		:date_added,
				        :brief,
				        :solution,
				        :outcome,
				        :feature,
				        :project_type

end
