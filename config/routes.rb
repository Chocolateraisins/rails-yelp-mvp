Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # Read
  get 'restaurants', to: 'restaurants#index', as: :restaurants
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

end
