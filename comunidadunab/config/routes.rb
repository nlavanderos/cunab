Rails.application.routes.draw do
  resources :curso_seccions
  resources :profesor_seccions
  resources :usuario_cursos
        devise_for :users
  #get 'bienvenido/index'
devise_scope :user do

    
    authenticated  do
            root to: 'bienvenido#index'
            end
    unauthenticated do
            root to: 'devise/sessions#new', as: 'unauthenticated_root'
            end
  end
        #root "bienvenido#index"
        resources :mensajes
        resources :foros
        resources :seccions
        resources :cursos
        resources :profesors
        resources :usuarios
 	get "usuarios", to: "usuarios#index"
   	get "mensajes", to: "mensajes#index"
	get "cursos", to: "cursos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#devise_scope :users do

            #authenticated  do
            #root to: 'bienvenido#index'
            #end

            #unauthenticated do
            #root to: 'devise/sessions#new', as: 'unauthenticated_root'
            #end
