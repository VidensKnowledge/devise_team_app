Rails.application.routes.draw do
  root "swords#index"
  devise_for :users

   resources :swords
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
