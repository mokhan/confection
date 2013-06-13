Confection::Application.routes.draw do
  devise_for :users

  resources :cakes
  resources :categories, :only => [:show], :path => 'c'

  get 'n_plus_one', to: 'cakes#n_plus_one'

  root :to => 'cakes#index'
end
