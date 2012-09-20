BackboneDataBootstrap::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'
  resources :posts, only: [:index]
end
