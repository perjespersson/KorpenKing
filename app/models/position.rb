class Position < ApplicationRecord
  validates :name, presence: true
  validates :coefficient, presence: true,
                          numericality: { greater_than: 0 }
end