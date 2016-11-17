class RemoveColumnFromDialerPlans < ActiveRecord::Migration
  def change
    remove_column :dialer_plans, :dialer_avaliable_id, :string
  end
end
