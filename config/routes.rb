# frozen_string_literal: false

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[new create]
  end
end
