Rails.application.routes.draw do
 get '/' => 'site#home'
 get '/contact' => 'site#contact'

 resources :projects, only: [:index,:show, :new, :create] do
 	resources :time_entries, except: [:show]
 end


 put '/project/:project_id/time_entries/:id/edit' => 'time_entries#edit'
 # get '/about' => 'site#about'

 # get '/projects' => 'projects#index'

 # get '/projects/new' => 'projects#new'

 # post '/projects' => 'projects#create'

 # get '/projects/:id' => 'projects#show'

 # get '/projects/:project_id/time_entries' => 'time_entries#index'

 # get '/projects/:project_id/time_entries' => 'time_entries#new'





end


