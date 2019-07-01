Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index' # 一覧画面
  get '/new' => 'blogs#new' # 投稿画面
  post '/create' => 'blogs#create' # 投稿機能
  post '/login' => 'blogs#login' # ログイン画面
end
