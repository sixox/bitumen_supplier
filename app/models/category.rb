class Category < ApplicationRecord

  has_many :packages
  has_many :products
  has_many :usages

end
