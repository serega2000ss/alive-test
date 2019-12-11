Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :dashboard, only: [:index] do
    collection do
      get :get_cors
      post :post_cors
    end
  end

  resources :shop, only: [:index]
end
