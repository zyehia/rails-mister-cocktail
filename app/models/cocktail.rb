class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :rating, inclusion: { in:  (1..5) }, presence: true
  validates :description, presence: true
end
