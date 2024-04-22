Rails.application.routes.draw do
  devise_for :admins

  devise_for :users


  scope module: 'users' do
		get '/users/my_page', to: 'users#my_page', as: 'my_page'
		get '/users/my_page/infomation', to: 'users#infomation', as: 'infomation'
    resources :users, only: [:show, :update] do
		  get :confirm, on: :member # 退会確認
      patch :withdrawal, on: :member # 退会処理
		end
  end

  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
