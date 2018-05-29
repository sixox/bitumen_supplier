class EditProduct < ActiveRecord::Migration[5.2]
  def change


    add_reference :products, :parent, index: true


  end
end
