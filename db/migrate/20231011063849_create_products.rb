class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, default: ""
      t.text :description, default: ""
      t.float :min_price, default: 0.0
      t.boolean :available, default: true
      t.references :category, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
