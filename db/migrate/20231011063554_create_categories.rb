class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, default: ""
      t.integer :position, default: 1
      t.boolean :display, default: true
      t.timestamps
    end
  end
end
