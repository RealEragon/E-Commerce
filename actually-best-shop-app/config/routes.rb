# config/routes.rb

Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  get 'profile', to: 'profiles#show', as: 'user_profile'
  get 'up' => 'rails/health#show', as: :rails_health_check
end
