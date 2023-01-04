Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root :to =>"homes#top"
  get "home/about"=>"homes#about"
  resources :books, only: [:destroy, :index, :edit, :create, :update, :show]
  resources :users, only: [:index, :show, :edit, :update]
  resources :groups do
    get "join" => "groups#join"
    get "new_mail" => "groups#new_mail"
    get "send_mail" => "groups#send_mail"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end