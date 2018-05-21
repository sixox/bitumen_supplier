class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.integer :position
      t.text :summery
      t.string :video_file
      t.string :color
      t.integer :minimum_order
      t.text :specification
      t.string :hs_code
      t.boolean :available
      t.text :meta_desc
      t.text :meta_keyword

      t.timestamps
    end
  end
end
