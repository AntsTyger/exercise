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


authenticated :user do
  root to: "users#index", as: :authenticated_root
end

unauthenticated do
  root to: "landing_page#index"
end

end