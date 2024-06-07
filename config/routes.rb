Rails.application.routes.draw do
  devise_for :users
  get :mypage, to:'mypage#index'
  get :toppage, to:"toppage#index"
end
