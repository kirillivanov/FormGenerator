FormGenerator::Application.routes.draw do
  resources :test_models
  resources :resourses
  resources :form_builders
  resources :columns
  resources :fields
  resources :options
  devise_for :users

  root :to => 'admin#index'
end
