Rails.application.routes.draw do
  resources :recipes, only: %i(index)
  root to: "static_pages#index"
  # render "recipes/index"
end
