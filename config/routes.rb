Rails.application.routes.draw do

  resources :raeets do
    collection do
      post :confirm
    end
  end
end
