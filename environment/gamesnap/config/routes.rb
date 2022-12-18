Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get "posts/all" => "posts#all"
  get "posts/profile" => "posts#profile"
  get "posts/:girl" => "posts#show"
  get "posts/:girl/:score" => "posts#score"
  
  post "posts/create" => "posts#create"

  get '/' => "posts#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
