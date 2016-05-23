Rails.application.routes.draw do
  devise_for :users
  resources :wallets, :categories
  resources :transactions do
    resources :wallets, :categories
  end
  root 'wallets#index'

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
    get 'users/sign_in' => "devise/sessions#new"
    get 'users/sign_up' => "devise/registrations#new"
  end
end
