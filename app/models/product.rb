class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :available, presence: true

  enum state: { inactive: 0, active: 1 }, _suffix: true
  enum available: { inactive: 0, active: 1 }, _prefix: :products
end
