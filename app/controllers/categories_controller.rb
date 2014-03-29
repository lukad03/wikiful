class CategoriesController < ApplicationController
  def index
      @categories = Category.all
  end

  def show
      @category = Category.find(params[:id])
      @articles = @category.articles.order(updated_at: :desc).limit(25)
  end

end
