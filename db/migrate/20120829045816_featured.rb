class Featured < ActiveRecord::Migration
  def up
  	create_table :featureds do |t|
  	  t.integer  :project_id
  	  t.string   :featured_text
  	end
  end

  def down
  	drop_table :featureds
  end
end
