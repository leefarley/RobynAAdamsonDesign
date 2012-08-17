class CreateImage < ActiveRecord::Migration
  def up
  	create_table :images do |t|
  	  t.integer  :project_id
  	  t.string   :image_file_name
      t.string   :image_content_type
      t.integer  :image_file_size 
      t.datetime :image_updated_at
  	end
  end

  def down
  	drop_table :images
  end
end
