Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :projects do
      resources :comments
    end
    root "projects#index"
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
