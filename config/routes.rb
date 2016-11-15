Rails.application.routes.draw do
  #get 'welcome/index'
  root 'welcome#index'

 # Directory: '.../app/views/welcome/show.html.erb'
 get '/historial', to: 'welcome#show', as: 'historial'

 resources :empanadas


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
