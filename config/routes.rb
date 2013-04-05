TodoApp::Application.routes.draw do
  resources :projects
  resources :items
  resources :teams
end
