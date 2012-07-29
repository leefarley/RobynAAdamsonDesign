class CreateImagesLinks < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :project_id
     	t.string :photo_file_name
    	t.string :photo_content_type
    	t.integer :photo_file_size
    	t.datetime :photo_updated_at
    end
  end

  def self.down
    drop_table :images
  end
end
