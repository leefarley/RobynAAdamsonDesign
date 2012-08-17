class AddThumbToProject < ActiveRecord::Migration
  def change
    add_column :projects, :thumbnail_file_name, :string
    add_column :projects, :thumbnail_content_type, :string
    add_column :projects, :thumbnail_file_size, :integer
    add_column :projects, :thumbnail_updated_at, :datetime
  end
end