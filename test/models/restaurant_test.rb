require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test 'should not save restaurant without name' do
    restaurant = Restaurant.new
    assert_not restaurant.save, 'Saved the restaurant without a name'
  end

  test 'should have many reviews' do
    restaurant = Restaurant.new(name: 'My Restaurant')
    assert_respond_to restaurant, :reviews
  end
end
