Rails.application.routes.draw do

   resources :users, only: [:create, :new] do
      resources :products, only: [:index, :show, :create, :destroy]
  end
end
