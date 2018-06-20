class Order < ApplicationRecord
  belongs_to :customer
  has_many :pizzas, :through => :orderpizza

end
