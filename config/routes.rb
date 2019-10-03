Rails.application.routes.draw do
  devise_for :add_user_textcovers
  devise_for :users
  resources :posts do
  	resources :comments
  end


  get "/pages/*page" => "pages#show"

  root 'posts#index'
end
