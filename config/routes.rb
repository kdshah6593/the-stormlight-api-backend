Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :books, only: [:index, :show, :edit, :update]
      resources :locations, only: [:index, :show, :edit, :update]
      resources :races, only: [:index, :show, :edit, :update]
      resources :knights_radiant_orders, only: [:index, :show, :edit, :update]
      resources :characters, only: [:index, :show, :edit, :update]
    end
  end
end
