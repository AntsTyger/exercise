Rails.application.routes.draw do

 devise_for :users 
 resources :users, only: [:index, :new, :create, :show, :destroy, :edit, :update]
 resources :recipes
 resources :routines


 resources :workouts do
  	resources :exercises
 end

 root 'static_pages#home'
 get 'about'     =>  'static_pages#about'
 get "stats" => "static_pages#stats"
end