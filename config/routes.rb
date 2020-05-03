Rails.application.routes.draw do
  # セッションがない時
  root 'home#top'
  get 'home/about' => 'home#about'

  devise_for :users
  resources :books
  resources :users, only: [:show, :index, :edit, :update]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
