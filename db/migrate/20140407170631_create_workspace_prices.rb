class CreateWorkspacePrices < ActiveRecord::Migration
  def change
    create_table :workspace_prices do |t|
      t.integer :workspace_id
      t.float :hourly_price
      t.boolean :hourly_price_active
      t.float :half_day_price
      t.boolean :half_day_price_active
      t.float :day_price
      t.boolean :day_price_Active
      t.float :monthly_price
      t.boolean :monthly_price_active

      t.timestamps
    end
  end
end
