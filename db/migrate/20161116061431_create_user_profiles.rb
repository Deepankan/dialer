class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name	
      t.string :address 
      t.integer :country_id 
      t.integer :state_id
      t.integer :city_id 
      t.string  :isd_code
      t.integer  :contact_no
      t.timestamps null: false
    end
  end
end
