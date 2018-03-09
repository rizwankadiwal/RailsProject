Rails.application.routes.draw do
  resources :products
  get 'admin', to: 'application#admin'
end
