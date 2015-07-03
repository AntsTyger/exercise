Rails.application.routes.draw do
  devise_for :users
 resources :recipes
 
   resources :workouts do
  	resources :exercises
  end

 root "recipes#index"
end