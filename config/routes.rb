Rails.application.routes.draw do
  get 'books/index'
  get 'top/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'top#top'
  resources :books, only: [:index]
  namespace :api do
    #API用のルーティングはここに書く
    resources :books
   end
 
   get '*path', to: 'top#top', format: false   #getのリクエストをまとめる

end
