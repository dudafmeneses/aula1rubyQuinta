Rails.application.routes.draw do
  resources :compras
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "pages#ultimo"
  root "compras#index"
end
