# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_27_065157) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_packages_on_category_id"
  end

  create_table "packages_products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "package_id"
    t.bigint "product_id"
    t.index ["package_id", "product_id"], name: "index_packages_products_on_package_id_and_product_id"
    t.index ["package_id"], name: "index_packages_products_on_package_id"
    t.index ["product_id", "package_id"], name: "index_packages_products_on_product_id_and_package_id"
    t.index ["product_id"], name: "index_packages_products_on_product_id"
  end

  create_table "packages_tags", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "package_id"
    t.index ["package_id"], name: "index_packages_tags_on_package_id"
    t.index ["tag_id", "package_id"], name: "index_packages_tags_on_tag_id_and_package_id"
    t.index ["tag_id"], name: "index_packages_tags_on_tag_id"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments_products", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "payment_id"
    t.bigint "product_id"
    t.index ["payment_id", "product_id"], name: "index_payments_products_on_payment_id_and_product_id"
    t.index ["payment_id"], name: "index_payments_products_on_payment_id"
    t.index ["product_id"], name: "index_payments_products_on_product_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "position"
    t.text "summery"
    t.string "video_file"
    t.string "color"
    t.integer "minimum_order"
    t.text "specification"
    t.string "hs_code"
    t.boolean "available"
    t.text "meta_desc"
    t.text "meta_keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "parent_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["parent_id"], name: "index_products_on_parent_id"
  end

  create_table "products_tags", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "product_id"
    t.index ["product_id"], name: "index_products_tags_on_product_id"
    t.index ["tag_id", "product_id"], name: "index_products_tags_on_tag_id_and_product_id"
    t.index ["tag_id"], name: "index_products_tags_on_tag_id"
  end

  create_table "products_usages", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "usage_id"
    t.index ["product_id", "usage_id"], name: "index_products_usages_on_product_id_and_usage_id"
    t.index ["product_id"], name: "index_products_usages_on_product_id"
    t.index ["usage_id", "product_id"], name: "index_products_usages_on_usage_id_and_product_id"
    t.index ["usage_id"], name: "index_products_usages_on_usage_id"
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_usages_on_category_id"
  end

  add_foreign_key "packages", "categories"
  add_foreign_key "packages_products", "packages"
  add_foreign_key "packages_products", "products"
  add_foreign_key "packages_tags", "packages"
  add_foreign_key "packages_tags", "tags"
  add_foreign_key "payments_products", "payments"
  add_foreign_key "payments_products", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "products_tags", "products"
  add_foreign_key "products_tags", "tags"
  add_foreign_key "products_usages", "products"
  add_foreign_key "products_usages", "usages"
  add_foreign_key "usages", "categories"
end
