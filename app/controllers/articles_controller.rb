# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    if params[:title]
      @articles = Article.where(title: params[:title])
      @message = 'Did not find anything' if @articles.empty?
    else
      @articles = Article.all
    end
  end

  def create
    article = Article.create(title: params[:title])
    message = if article.persisted?
                'All good!'
              else
                article.errors.full_messages.to_sentence
              end
    redirect_to root_path, notice: message
  end
end
