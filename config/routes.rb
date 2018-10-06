Rails.application.routes.draw do
  get 'welcome/index'

  # indicamos que el root de la pagina es welcome\index
  root "welcome#index"

  # personalizacion de rutas
  get 'bienvenido', to: 'welcome#index'


  get 'tareas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
