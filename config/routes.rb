Rails.application.routes.draw do
  get 'reports', to: 'reports#index'
  get 'reports/by_category', to: 'reports#report_by_category'
  get 'reports/by_date', to: 'reports#report_by_date'
  get 'main', to: 'main#index'
  resources :operations
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "main#index"
end
