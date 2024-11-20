# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[index]
  resources :products, only: %i[index show create]
end
