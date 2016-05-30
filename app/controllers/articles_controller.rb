class ArticlesController < ApplicationController

  def index
    @articles = Article.all

    render json: @articles
  end

  def show
    @article = Article.find(params[:id])

    render json: @article
  end

  def create
  end

  def new
  end

  def edit
  end

end
