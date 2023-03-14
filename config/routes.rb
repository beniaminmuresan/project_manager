# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects do
    resources :comments, module: :projects
    resources :project_tasks do
      resources :comments, module: :project_tasks
    end
  end
end
