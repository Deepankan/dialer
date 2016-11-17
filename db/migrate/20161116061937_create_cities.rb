class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :country_id	
      t.integer :state_id	
      t.string :name
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
