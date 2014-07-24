Rails.application.routes.draw do
  resources :assets, only: [:new, :create, :show]

  root 'assets#new'
end
