Rails.application.routes.draw do
  get 'featured/index'
resources :interns
resources:project_sponsors
  # get 'welcome/homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#homepage'

  get 'featured' => 'project_sponsors#featured'
  
  get 'homepage' => 'welcome#homepage'

  get 'about' => 'pages#about'

  get 'sponsors' => 'pages#sponsors'

  get 'internships' => 'pages#internships'
  
  
end
