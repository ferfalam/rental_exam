Rails.application.routes.draw do
  get "/", to: "proteries#index"
  resources :proteries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
