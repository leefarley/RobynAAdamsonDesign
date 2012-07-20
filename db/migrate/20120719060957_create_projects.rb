class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
	  t.string :title, :null => false
	  t.string :client, :null => false
	  t.string :date_added, :null => false
      t.text :brief, :null => false
      t.text :solution, :null => false
      t.text :outcome, :null => false
      t.boolean :feature , :null => false
      t.integer :project_type , :null => false
      t.timestamps
    end
    
    Project.create(:title => 'test project',
                :client => 'test client',
                :date_added => Time.now ,
                :brief => 'password',
                :solution => 'password',
                :outcome => 'text',
                :feature => 'text',
                :project_type => 0)
  end
  
  def self.down
    drop_table :projects
  end

  
end
