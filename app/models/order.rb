class Order < ApplicationRecord
  belongs_to :cart_basket
  has_many :products, through: :cart_basket, dependent: :destroy
end
