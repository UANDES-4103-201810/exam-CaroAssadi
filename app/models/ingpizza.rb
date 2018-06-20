class Ingpizza < ApplicationRecord
  belongs_to :ingredient
  belongs_to :pizza
end
