Rails.application.routes.draw do
  resources :categories
  get 'search', to: 'search#index', as: 'search'
  resources :products
  get 'admin', to: 'application#admin'
end
