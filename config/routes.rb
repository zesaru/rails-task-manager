Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks
  # new
  get 'tasks/new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task
  # edit
  get 'task/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
