# frozen_string_literal: true

Rails.application.routes.draw do
  resources :seasons, only: %i[create]
end
