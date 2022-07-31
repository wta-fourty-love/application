# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :seasons, only: %i[create]
end
