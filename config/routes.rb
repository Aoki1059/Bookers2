Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  # ゲストユーザー機能記述
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  # ここまで
  get "home/about" => "homes#about"
  # URL「home/about」にアクセス->homesコントローラのaboutアクションを呼び出す
  resources :books, only: [:new, :index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :create, :update]
end