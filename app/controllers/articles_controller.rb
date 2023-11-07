class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC")
  end

  def new
    @article = Article.new
  end
  def create
    @article = Article.create(article_params)
    if @article.valid?
    redirect_to root_path
    else
    render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :genre_id)
  end
end