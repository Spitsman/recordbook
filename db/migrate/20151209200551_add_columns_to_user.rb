class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :img_url, :string
  	add_column :users, :semester, :integer
  	add_column :users, :adress, :string
  	add_column :users, :faculty, :string
  end
end
