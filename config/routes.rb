Rails.application.routes.draw do
  resources :users
  resources :accounts
  resources :play_list_items
  resources :play_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
