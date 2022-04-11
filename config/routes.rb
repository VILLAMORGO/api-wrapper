Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#home"

  get "/films", to: "pages#films"
  get "/characters", to: "pages#characters"
  
end
