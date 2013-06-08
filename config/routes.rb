Confection::Application.routes.draw do
  resources :cakes
  resources :categories, :only => [:show], :path => 'c'
  root :to => 'cakes#index'
end
