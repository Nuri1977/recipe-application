class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true
  validates :preparation_time, numericality: { only_integer: true }
  validates :cooking_time, numericality: { only_integer: true }

  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods
end
