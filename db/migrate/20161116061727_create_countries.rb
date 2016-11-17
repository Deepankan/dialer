class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :isd_code_name
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
