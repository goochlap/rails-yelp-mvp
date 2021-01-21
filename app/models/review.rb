class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5, allow_nil: false }
  validates :rating, numericality: { only_intger: true }
end
