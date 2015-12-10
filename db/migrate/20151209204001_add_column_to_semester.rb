class AddColumnToSemester < ActiveRecord::Migration
  def change
  	add_column :semesters, :user_id, :integer
  	add_index :semesters, :user_id
  end
end
