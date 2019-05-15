# frozen_string_literal: true

class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: { articles: articles }
  end

  def create
    article = Article.create(title: params[:title], author_id: params[:author_id])
    if article.persisted?
      render json: { message: 'Yay!'}
    else
      render json: { message: 'Shoots!'}
    end
  end
end
