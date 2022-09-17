class CartBasket < ApplicationRecord
  belongs_to :product
  has_one :order, dependent: :destroy
end
