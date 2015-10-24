Rails.application.routes.draw do
  root to: 'says#index'
  resources :says
end
