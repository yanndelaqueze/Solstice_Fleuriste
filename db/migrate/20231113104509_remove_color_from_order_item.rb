class RemoveColorFromOrderItem < ActiveRecord::Migration[7.1]
  def change
    remove_column :order_items, :color
  end
end
