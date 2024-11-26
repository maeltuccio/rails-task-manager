Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # Pour afficher toutes les tasks
  get 'tasks', to: 'tasks#index'

  #Pour afficher le formulaire des taches
   get 'tasks/new', to: 'tasks#new'

  #Pour créer une nouvelle tache
   post 'tasks', to: 'tasks#create'

   # pour voir la modification des taches (formulaire)
   get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
   #Pour modifier la tache
   patch "/tasks/:id", to: "tasks#update"

  # delete "/restaurants/:id", to: "restaurants#destroy"
  delete "/tasks/:id", to: 'tasks#destroy', as: :destroy_task
   # Pour avoir une tache en particulier
  get 'tasks/:id', to: 'tasks#show', as: :task
end
