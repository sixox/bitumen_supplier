wclass CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
