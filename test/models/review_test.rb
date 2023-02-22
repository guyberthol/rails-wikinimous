require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test 'should not save review without content' do
    review = Review.new
    assert_not review.save, 'Saved the review without content'
  end

  test 'should belong to restaurant' do
    restaurant = Restaurant.create(name: 'My Restaurant')
    review = restaurant.reviews.create(content: 'Great restaurant')
    assert_equal review.restaurant, restaurant
  end
end
