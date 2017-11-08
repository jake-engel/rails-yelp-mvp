class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: (0..5).to_a, allow_nil: false }, numericality: true
end
