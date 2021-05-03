Rails.application.routes.draw do
  get 'search/search'
  get 'favorites/create'
  get 'favorites/destroy'
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  get 'users/:id/followed' => 'relationships#followed', as: 'followed' # フォロー一覧
  get 'users/:id/follower' => 'relationships#follower', as: 'follower' # フォロワー一覧
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  get 'search' => 'searchs#search'
end