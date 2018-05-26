class CreateProductsTagsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :products_tags, :id => false do |t|

      t.references :tag, foreign_key: true
      t.references :product, foreign_key: true
    end
    add_index :products_tags, ["tag_id", "product_id"]
  end
end
