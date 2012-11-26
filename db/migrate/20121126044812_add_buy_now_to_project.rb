class AddBuyNowToProject < ActiveRecord::Migration
  def up
    add_column :projects, :purchasable, :boolean,:default => false, :null => false
    add_column :projects, :purchase_link, :string
  end

  def down
  	remove_column :projects, :purchasable, :boolean
  	remove_column :projects, :purchase_link, :string
  end
end
