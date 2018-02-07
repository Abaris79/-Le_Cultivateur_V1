Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :oeuvres, only: [:index]
  resources :projects do
    resources :oeuvres, only: [:create, :show, :edit, :destroy, :update, :new ]
  end
  resources :salles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
