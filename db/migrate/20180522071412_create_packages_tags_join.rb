class CreatePackagesTagsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :packages_tags, :id => false do |t|

      t.references :tag, foreign_key: true
      t.references :package, foreign_key: true



    end
    add_index :packages_tags, ["tag_id", "package_id"]
  end
end
