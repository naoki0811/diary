Rails.application.routes.draw do
  get 'logout' => 'sessions#destroy'
  devise_for :users
  root to: "tweets#index"
  resources :tweets, only: [:index, :new, :create]
end
