Rails.application.routes.draw do
  resources :ingriedients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end