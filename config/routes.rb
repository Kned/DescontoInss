Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :proponente
  post '/proponente/calcula_desconto', to: 'desconto#calcula_desconto', as: 'calcula_desconto'
  post '/proponente/:id/calcula_desconto', to: 'desconto#calcula_desconto', as: 'calcula_desconto_id'
  get '/proponente/:id/atualiza_salario', to: 'proponente#edit_salario', as: 'edit_salario'
  put '/proponente/:id/atualiza_salario', to: 'proponente#update_salario', as: 'update_salario'

  root to: "dashboard#index"
  # Defines the root path route ("/")
  # root "posts#index"
end
