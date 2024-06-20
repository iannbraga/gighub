Rails.application.routes.draw do
  resources :eventos

  get "up" => "rails/health#show", as: :rails_health_check
  root "eventos#index"
end
