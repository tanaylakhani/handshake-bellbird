Rails.application.routes.draw do
  root to: "alarms#index"
  resources :upvotes
  resources :alarms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
