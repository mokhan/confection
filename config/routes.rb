Confection::Application.routes.draw do
  devise_for :users

  resources :cakes
  resources :categories, :only => [:show], :path => 'c'
  root :to => 'cakes#index'
end
