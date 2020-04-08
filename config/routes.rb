# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'raeets#index'
  resources :raeets do
    collection do
      post :confirm
    end
  end
end
