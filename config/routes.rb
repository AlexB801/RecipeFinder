Rails.application.routes.draw do
  resources :recipes
  root to: "static_pages#index"
end
