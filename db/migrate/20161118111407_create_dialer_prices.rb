class CreateDialerPrices < ActiveRecord::Migration
  def change
    create_table :dialer_prices do |t|
      t.string :name
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
