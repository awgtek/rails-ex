Rails.application.routes.draw do
  resources :purchases
  resources :shops
  resources :categories
  resources :denominations
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
