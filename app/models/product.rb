class Product < ApplicationRecord
  has_one :cart_basket
  has_many :orders, through: :cart_basket, source: :product, dependent: :destroy
end
