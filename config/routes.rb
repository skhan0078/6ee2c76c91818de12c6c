Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :typeahead, only: [:show]
  end
end
