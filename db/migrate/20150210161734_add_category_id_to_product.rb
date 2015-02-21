class AddCategoryIdToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :category
  end
end
