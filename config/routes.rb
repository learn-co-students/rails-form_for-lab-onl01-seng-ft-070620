# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: %i[create edit update index new show]
  resources :students, only: %i[create edit update index new show]
end
