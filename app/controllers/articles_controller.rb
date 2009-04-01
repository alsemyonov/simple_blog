class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/manage
  def manage
    @articles = Article.all
  end
  
  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    @article = Article.new(params[:article])

    if @article.save
      flash[:notice] = 'articles.flash.created'
      redirect_to @article
    else
      render 'new'
    end
  end
end
