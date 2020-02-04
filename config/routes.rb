Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#index'
  get '/posts' => 'main#index', as: :posts
  get '/posts/:id' => "main#show", as: :post
  get '/post/new' => "main#new", as: :new
  post '/post' => "main#create"

  get '/update/:id' => "main#update", as: :update
  patch '/update/:id' => "main#update_post"

  delete '/posts/:id' => "main#delete", as: :delete


end
