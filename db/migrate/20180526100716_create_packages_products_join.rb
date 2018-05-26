class CreatePackagesProductsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :packages_products do |t|

      t.references :package, foreign_key: true
      t.references :product, foreign_key: true


    end
    add_index :packages_products, ["package_id", "product_id"]
    add_index :packages_products, ["product_id", "package_id"]
  end
end
