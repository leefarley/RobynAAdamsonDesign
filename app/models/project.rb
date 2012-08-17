class Project < ActiveRecord::Base
  
	attr_accessible :title,
	:client,
	:date_added,
	:brief,
	:solution,
	:outcome,
	:is_featured,
	:is_published,
	:project_type,
	:thumbnail,
	:thumbnail_file_name,
	:thumbnail_content_type,
	:thumbnail_file_size,
	:thumbnail_updated_at
	

  has_attached_file :thumbnail,:storage => :s3,
        :s3_credentials => {:access_key_id => 'AKIAIO4KDFY5CJEKTYBQ',:secret_access_key => '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'},
  		:bucket => 'robynaadamsondesign',
  		:path => ':attachment/:id.:extension'
end
