Rails.application.routes.draw do
  get 'product_types/new'

  get 'product_types/index'

  get 'customer_products/Products'

  get 'customer_products/PaymentTypes'

  get 'customer_products/Orders'

  resources :products
  resources :payment_types
  resources :orders
  resources :product_types
  resources :users
  resources :order_products
  resources :sessions
  resources :customer_products
  
  get 'welcome/index'
  root 'welcome#index'

  get 'shopping_cart', to: 'orders#show', as: 'shopping_cart'

  get 'profile', to: 'users#show', as: 'profile'
  get 'add_payment', to: 'payment_types#new', as: 'add_payment'
  # get 'payment_types', to: 'payment_types#index', as: 'payment_types'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # get 'customer_products/Products'
  # get 'customer_products/PaymentTypes'
  # get 'customer_products/Orders'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


