class Package < ApplicationRecord

  has_and_belongs_to_many :tags
  has_and_belongs_to_many :products

  belongs_to :category, optional: true

end
