class CreateInfopages < ActiveRecord::Migration
  def change
    create_table :infopages do |t|
      t.string :img_url
      t.integer :course
      t.string :name
      t.string :faculty
      t.string :adress
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
