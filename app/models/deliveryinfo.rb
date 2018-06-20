class Deliveryinfo < ApplicationRecord
  belongs_to :order

  validates :phone, :address1, :address2, presence: true
  validates :phone, numericality: {only_integer: true}


end
