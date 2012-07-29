class Image < ActiveRecord::Base
  
	attr_accessible  :photo_file_name,:photo_content_type,:photo_file_size,:photo_updated_at

	belongs_to :Project
	
end
