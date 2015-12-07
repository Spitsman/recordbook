class AddUseridToInfopage < ActiveRecord::Migration
  def change
    add_column :infopages, :user_id, :integer
  end
end
