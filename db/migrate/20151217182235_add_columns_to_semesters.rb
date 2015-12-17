class AddColumnsToSemesters < ActiveRecord::Migration
  def change
  	add_column :semesters, :number, :integer
  	add_column :semesters, :linal, :integer
  	add_column :semesters, :discrete_math, :integer
  	add_column :semesters, :toi, :integer
  end
end
