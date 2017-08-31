Rails.application.routes.draw do
  get 'main_page/call_details'

  get 'main_page/agents'

  resources :agents
  resources :call_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
