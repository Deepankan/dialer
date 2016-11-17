class CreateDialerPlanLists < ActiveRecord::Migration
  def change
    create_table :dialer_plan_lists do |t|
      t.integer :dialer_plan_id
      t.integer :dialer_avaliable_id
      t.string :scheme
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
