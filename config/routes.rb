Rails.application.routes.draw do
  get 'chats/show'
  get 'search/search'
  get 'favorites/create'
  get 'favorites/destroy'
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  resources :users, only: [:index, :show, :edit, :update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  get 'search' => 'searchs#search'

  get 'users/:id/followed' => 'relationships#followed', as: 'followed' # フォロー一覧
  get 'users/:id/follower' => 'relationships#follower', as: 'follower' # フォロワー一覧
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  get 'unsubscribe/:name' => 'users#unsubscribe', as: 'confirm_unsubscribe'
  patch ':id/withdraw/:name' => 'users#withdraw', as: 'withdraw_user'
  put 'withdraw/:name' => 'users#withdraw'
end
