Rails.application.routes.draw do
  resources :assets, only: [:new]

  root 'assets#new'
end
