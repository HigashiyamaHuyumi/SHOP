Rails.application.routes.draw do
  devise_for :admins

  devise_for :users


  scope module: 'users' do
 		get '/users/mypage', to: 'users#mypage', as: 'mypage'
 		get '/users/mypage/info', to: 'users#info', as: 'info'
 		get '/users/mypage/info_edit', to: 'users#edit', as: 'edit'
     resources :users, only: [:show, :update] do
 		  get :confirm, on: :member # 退会確認
       patch :withdrawal, on: :member # 退会処理
 		end
  end

  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
