require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations for recipe model' do
    before(:each) do
      @recipe = Recipe.create(name: 'pizza', user_id: 3, preparation_time: 34, cooking_time: 45,
                              description: 'hello this is recipe', public: true)
    end

    it 'check if name is present' do
      @recipe.name = nil
      expect(@recipe).to_not be_valid
    end

    it 'check if preparation time is an integer' do
      @recipe.preparation_time = 23.12
      expect(@recipe).to_not be_valid
    end

    it 'check if cooking time is an integer' do
      @recipe.cooking_time = 23.12
      expect(@recipe).to_not be_valid
    end
  end
end
