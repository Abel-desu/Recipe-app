class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods

  validates :name, :description, presence: true
  validates :preparation_time, :cooking_time, numericality: { greater_than: 0 }
end
