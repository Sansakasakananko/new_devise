Rails.application.routes.draw do
  resources :posts
  get :toppage, to:"toppage#index"
  get :mypage, to:'mypage#index'
 
  devise_for :users
  resources :users
  
  
end
