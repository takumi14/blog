Rails.application.routes.draw do
  get 'blogs' => 'blogs#index'
  get '/new' => 'blogs#new' # 投稿画面
  post '/create' => 'blogs#create' # 投稿機能
end
