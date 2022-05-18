class Food < ApplicationRecord

    belongs_to :user

    validates :name, presence:true 
    validates :measurement_unit, presence:true 
    validates :price, presence:true 
    validates :price, numericality: { only_integer: true }
 
  has_many :recipe_foods, dependent: :destroy
  has_many :recipes, through: :recipe_foods
end
