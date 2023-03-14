# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects do
    resources :project_tasks
  end
end
