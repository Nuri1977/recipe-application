require 'rails_helper'

RSpec.describe Food, type: :model do
  
describe 'validations for food model' do
    before (:each) do
        @food=Food.create(name:'pizza',user_id:3,measurement_unit:'kilogram',price:56)
    end

  
it 'check if name is present' do
    @food.name=nil
    expect(@food).to_not be_valid
end

it 'check if price is an integer' do
    @food.price=23.12
    expect(@food).to_not be_valid
end

end

end
