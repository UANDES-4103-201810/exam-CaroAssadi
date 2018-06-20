class Orderpizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :order

  validates :pizza, presence: true
end
