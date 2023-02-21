class ArticlesController < ApplicationController
  def search
    @articles = Article.where("title LIKE ?", "%#{params[:search]}%")
  end

  def index
  end

  def show

  end

end
