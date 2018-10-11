Rails.application.routes.draw do
  
  # personalizacion de rutas
  get 'bienvenido', to: 'welcome#index'
  # get 'tareas', to: 'tareas#index'
  # get 'tareas/new', to: 'tareas#new'
  # post 'tareas', to: 'tareas#create'    
  # get 'tareas/:id', to: 'tareas#show'  
  # get 'tareas/:id/edit', to: 'tareas#edit'
  # delete 'tareas/:id', to: 'tareas#destroy'

  # # indicamos que el root de la pagina es welcome\index
  root 'welcome#index'
  resources :tareas
end
