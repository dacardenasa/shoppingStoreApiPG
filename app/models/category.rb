class Category < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :status, presence: true

  enum status: { inactive: 0, active: 1 }
end
