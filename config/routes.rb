Rails.application.routes.draw do
  root 'tasks#index'
  get 'task/:id', to: 'tasks#show', as: :task
  get 'new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'
  delete 'task/:id', to: 'tasks#destroy'
end
