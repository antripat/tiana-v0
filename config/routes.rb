Rails.application.routes.draw do
  resources :agents
  resources :call_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
