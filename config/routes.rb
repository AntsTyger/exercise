Rails.application.routes.draw do

 devise_for :users 
 resources :users, only: [:index, :new, :create, :show, :destroy, :edit, :update]
 resources :recipes
 resources :routines do
  member do
   put "like", to: "routines#upvote"
  end
 end


 resources :workouts do
  	resources :exercises
 end

 root 'users#index'
 get 'about'     =>  'static_pages#about'
 get "stats" => "static_pages#stats"
end