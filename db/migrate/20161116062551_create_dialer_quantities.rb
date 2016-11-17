class CreateDialerQuantities < ActiveRecord::Migration
  def change
    create_table :dialer_quantities do |t|
      t.integer :dialer_plan_id
      t.string :uniq_id
      t.string :user_name
      t.string :password
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
