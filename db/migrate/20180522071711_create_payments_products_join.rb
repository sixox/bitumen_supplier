class CreatePaymentsProductsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :payments_products, :id => false do |t|


      t.references :payment, foreign_key: true
      t.references :product, foreign_key: true
    end

    add_index :payments_products, ["payment_id", "product_id"]

  end
end
