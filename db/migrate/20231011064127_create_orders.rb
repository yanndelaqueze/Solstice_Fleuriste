class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.float :total
      t.float :subtotal
      t.references :user, null: false, foreign_key: true
      t.string :status, default: "En cours"
      t.string :delivery_address
      t.string :transport, default: "Click & Collect"
      t.datetime :date
      t.string :delivery_instructions
      t.string :phone
      t.float :delivery_cost, default: 0.0
      t.boolean :delivery_possible, default: false

      t.timestamps
    end
  end
end
