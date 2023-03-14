# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects do
    resources :comments, module: :projects
    resources :tasks do
      resources :comments, module: :tasks
    end
  end
end
