# frozen_string_literal: true

Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: :create

  namespace :api do
    resources :articles, only: %i[index create]
  end
end
