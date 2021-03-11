Rails.application.routes.draw do
  resources :recepies
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
