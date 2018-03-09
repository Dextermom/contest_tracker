Rails.application.routes.draw do


  root 'welcomes#index'
  resources :entries
  resources :welcomes
  resources :students
  resources :selections
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
