Confection::Application.routes.draw do
  resources :cakes
  root :to => 'cakes#index'
end
