class ArticlesController < ApplicationController
  def index
    articles = Article.all
    pp articles
    # render json: articles
    articles
  end
end
