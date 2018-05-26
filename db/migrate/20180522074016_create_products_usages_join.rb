class CreateProductsUsagesJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :products_usages, :id =>false do |t|

      t.references :product, foreign_key: true
      t.references :usage, foreign_key: true
    end
    add_index :products_usages, ["product_id", "usage_id"]
    add_index :products_usages, ["usage_id", "product_id"]
  end
end
