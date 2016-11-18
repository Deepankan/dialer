class RemoveAndAddColumnToDialerPlans < ActiveRecord::Migration
  def change
  	remove_column :dialer_plans, :name, :string
  	add_column :dialer_plans, :dialer_price_id, :integer
  end
end
