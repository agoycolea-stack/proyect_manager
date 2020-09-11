Rails.application.routes.draw do
  get 'proyects/new'
  post 'proyects/create'
  root 'proyects#new'
  get 'proyects/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
