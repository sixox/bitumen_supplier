class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
