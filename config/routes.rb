Rails.application.routes.draw do
  get 'users/index'
  resources :todos
  devise_for :users
  post 'todos/:id/done', to: 'todos#done', as: 'done'

  delete 'todos/:id/undone', to: 'todos#undone', as: 'undone'
  get 'users/index', to: 'users#index'

  root to: "todos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
