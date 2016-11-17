class AddColumnToDialerPlans < ActiveRecord::Migration
  def change
    add_column :dialer_plans, :user_id, :integer
  end
end
