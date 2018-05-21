class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :position
      t.boolean :visible

      t.timestamps null: false
    end
  end
end
