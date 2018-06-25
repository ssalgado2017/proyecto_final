Rails.application.routes.draw do
  resources :clients
  resources :institutions
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
