class Pizza < ApplicationRecord
  belongs_to :recipe
  has_many :orderpizzas, :through => :orderpizzas
  has_one :crust
end
