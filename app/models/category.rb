class Category < ApplicationRecord

  has_many :packages
  has_many :products
  has_many :usages


  acts_as_list


  scope :sorted, lambda {order("categories.position ASC")}

end
