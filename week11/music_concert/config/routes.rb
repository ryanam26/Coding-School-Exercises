Rails.application.routes.draw do
   resources :concerts, only: [:index, :show, :new, :create] do
   resources :comments, only: [:new, :create, :destroy]
 end
end
