class Usage < ApplicationRecord

  belongs_to :category, optional: true
  has_and_belongs_to_many :products



  scope :sorted, lambda {order("usages.name ASC")}


end
