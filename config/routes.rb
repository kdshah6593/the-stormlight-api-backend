Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      resources :books, only: [:index, :create, :show, :edit, :update]
      resources :locations, only: [:index, :create, :show, :edit, :update]
      resources :races, only: [:index, :create, :show, :edit, :update]
      resources :knights_radiant_orders, only: [:index, :create, :show, :edit, :update]
      resources :characters, only: [:index, :create, :show, :edit, :update]
      resources :essences, only: [:index, :create, :show, :edit, :update]
      resources :sprens, only: [:index, :create, :show, :edit, :update]
      resources :surges, only: [:index, :create, :show, :edit, :update]
      devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords',
      }
    end
  end
end
