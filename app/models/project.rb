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
	

  has_attached_file :thumbnail,
  		:storage => :s3,
  		:url => ":s3_domain_url",
        :s3_credentials => {:bucket => 'robynaadamsondesign',:access_key_id => 'AKIAIO4KDFY5CJEKTYBQ',:secret_access_key => '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'},
  		:path => ':attachment/:filename.:extension'
end
