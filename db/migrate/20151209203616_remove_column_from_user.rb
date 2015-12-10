class RemoveColumnFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :semester
  end
end
