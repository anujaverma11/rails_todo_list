Rails.application.routes.draw do
  resources :todo_items

  root 'todo_items#index'
end
