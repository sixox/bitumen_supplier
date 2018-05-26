class Usage < ApplicationRecord

  belongs_to :category, optional: true
  has_and_belongs_to_many :products

end
