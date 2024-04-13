Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  
  scope module: 'user' do
    resources :user, only: [:update] do # 顧客リソース用のルートを追加
		  get :confirm, on: :member # 退会確認ページ用のルート
      patch :withdrawal, on: :member # 退会処理用のルート
		end
	end
	
	
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
