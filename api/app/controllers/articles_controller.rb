class ArticlesController < ApplicationController
  def index
    # articles = Article.all
    articles = {
      name: "moriyama nagi",
      age: 27,
      job: "software engineer"
    }
    render json: articles
  end
end
