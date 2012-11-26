class Featured < ActiveRecord::Base
	attr_accessible :project_id,:featured_text

	belongs_to  :project
	has_many :images, :through => :project
end