class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  validates :name, uniqueness: true

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end
end
