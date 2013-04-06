TodoApp::Application.routes.draw do

  root :to => "teams#index"

  resources :projects
  resources :items
  resources :teams
  resources :users
end
