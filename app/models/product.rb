class Product < ApplicationRecord
  belongs_to :supplier
  has_many :image_url
  has_many :order

  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  validates :name, uniqueness: true

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end
end
