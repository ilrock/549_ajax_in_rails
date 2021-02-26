Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants, only: [ :index, :show, :destroy ] do
    # /restaurants/13/reviews
    resources :reviews, only: [:create]
  end
end
