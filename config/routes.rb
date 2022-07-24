# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'seasons' do
    post 'add', to: 'add'
  end
end
