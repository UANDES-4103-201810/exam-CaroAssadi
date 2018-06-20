class Ingpizza < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
end
