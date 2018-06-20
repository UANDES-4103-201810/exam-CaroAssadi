class Recipe < ApplicationRecord
  has_one :pizza
  has_many :ingpizzas
  has_many :ingredients, :through => :ingpizzas

end
