Rails.application.routes.draw do

  root to: "tasks#index"
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: "new"
  get "tasks/:id", to: "tasks#show", as: "task"
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  post "tasks", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update", as: "update"
  delete "tasks/:id", to: "tasks#destroy"
  # resources :tasks
end
