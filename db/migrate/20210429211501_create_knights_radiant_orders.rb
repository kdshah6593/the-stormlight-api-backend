class CreateKnightsRadiantOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :knights_radiant_orders do |t|
      t.string :title
      t.string :bond

      t.timestamps
    end
  end
end
