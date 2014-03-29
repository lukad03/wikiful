class ArticlesController < ApplicationController
  def index
      @articles = Article.order(updated_at: :desc).limit(25)
  end

  def show
      @article = Article.find(params[:id])
  end

  def create
  end

  def new
  end

end
