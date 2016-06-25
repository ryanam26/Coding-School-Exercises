Rails.application.routes.draw do
 get '/' => 'site#home'
 get '/contact' => 'site#contact'
 get '/about' => 'site#about'

 get '/projects' => 'projects#index'

 get 'projects/new' => 'projects#new'

 post '/projects' => 'projects#create'

end


