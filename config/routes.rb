Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]	# do ~ end の間に配置することにより親子関係（ネストする）
end  
  root 'home#top'
  get 'home/about' => "home#about"
end