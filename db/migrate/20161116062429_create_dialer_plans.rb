class CreateDialerPlans < ActiveRecord::Migration
  def change
    create_table :dialer_plans do |t|
      t.integer :dialer_avaliable_id
      t.string :name
      t.string :scheme
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
