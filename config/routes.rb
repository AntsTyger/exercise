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

 root 'static_pages#index'

end