class Ingredient < ApplicationRecord
  has_many :ingpizza
  has_many :recipes, :through => :ingpizza
end
