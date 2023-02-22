require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'should not save article without title' do
    article = Article.new
    assert_not article.save, 'Saved the article without a title'
  end

  test 'should not save article without body' do
    article = Article.new(title: 'My Article')
    assert_not article.save, 'Saved the article without a body'
  end
end
