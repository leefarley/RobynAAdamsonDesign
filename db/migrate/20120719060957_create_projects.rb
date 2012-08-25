class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
  	  t.string :title, :null => false
  	  t.string :client, :null => false
  	  t.string :date_added, :null => false
      t.text :brief, :null => false
      t.text :solution, :null => false
      t.text :outcome, :null => false
      t.boolean :is_featured ,:default => false, :null => false
      t.boolean :is_published ,:default => false, :null => false
      t.integer :project_type ,:default => 0, :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :projects
  end

  
end
