Rails.application.routes.draw do
 get :toppage, to:"toppage#index"
  get :mypage, to:'mypage#index'
 
  devise_for :users
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
  
end
