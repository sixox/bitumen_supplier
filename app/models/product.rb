class Product < ApplicationRecord



  has_and_belongs_to_many :tags
  has_and_belongs_to_many :payments
  belongs_to :category, optional: true
  has_and_belongs_to_many :usages
  has_and_belongs_to_many :packages
  has_many :subproduct, class_name: "Product", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Product"


  scope :sorted, lambda {order("products.position ASC")}
  scope :available, lambda {where(:available => true)}
  scope :unavailable, lambda {where(:available => false)}
  scope :sorted_by_name, lambda {order("products.name ASC")}
  scope :newest_first, lambda {order("products.created_at DESC")}



end
