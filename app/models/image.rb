class Image < ActiveRecord::Base

	attr_accessible :project_id,
		:image,
		:image_file_name,
		:image_content_type,
		:image_file_size,
		:image_updated_at

	belongs_to :project
	

    has_attached_file :image,
  		:storage => :s3,
  		:url => ":s3_domain_url",
        :s3_credentials => {:bucket => 'robynaadamsondesign',:access_key_id => 'AKIAIO4KDFY5CJEKTYBQ',:secret_access_key => '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'},
  		:path => ':attachment/:filename'
end