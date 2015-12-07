class CreateUsers < ActiveRecord::Migration
  def change    
  	create_table :users do |t|
	  	t.string :first_name
	  	t.string :last_name
	    t.string :role
	    t.string :email
	    t.string :persistence_token
	    t.string :password_salt
	    t.timestamps null: false    
    end
  end
end
