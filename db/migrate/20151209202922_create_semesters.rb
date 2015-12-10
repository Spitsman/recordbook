class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
    	t.integer :matlog
    	t.integer :ptms
    	t.boolean :differential_equations # зачет
    end
  end
end
