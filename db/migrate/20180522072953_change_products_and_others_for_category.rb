class ChangeProductsAndOthersForCategory < ActiveRecord::Migration[5.2]
  def change


    add_reference :packages, :category, foreign_key: true
    add_reference :products, :category, foreign_key: true
    add_reference :usages, :category, foreign_key: true


  end
end
