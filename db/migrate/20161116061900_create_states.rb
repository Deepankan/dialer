class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :country_id	
      t.string :name
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
