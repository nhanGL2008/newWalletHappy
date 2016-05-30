Rails.application.routes.draw do
  devise_for :users
  resources  :categories, :transactions
  resources :wallets do
    resources :transactions
  end
  root 'static_pages#home'

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
    get 'users/sign_in' => "devise/sessions#new"
    get 'users/sign_up' => "devise/registrations#new"
  end
end
