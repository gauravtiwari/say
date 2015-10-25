Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :create] do
    collection do
      get :user
    end
  end
end
