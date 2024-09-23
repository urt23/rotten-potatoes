Rails.application.routes.draw do
  resources :movies
  root :to => redirect('/movies#index')
end