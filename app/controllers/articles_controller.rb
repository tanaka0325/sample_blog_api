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
    @article = Article.new(params[:article])

    if @article.save
      render json: { status: 200, message: "article saved.", data: @article.to_json }
    else
      render json: { status: 500, message: "article saved is failed." }
    end

  end

  def new
  end

  def edit
  end

end
