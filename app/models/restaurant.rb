class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(Chinese Italian Japanese French Belgian),
  message: "%{value}is not a valid size" }, allow_nil: true
end
