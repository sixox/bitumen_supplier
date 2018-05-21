class Addralationtest < ActiveRecord::Migration[5.2]
  def change

add_reference :packages, :category, index: true


  end
end
