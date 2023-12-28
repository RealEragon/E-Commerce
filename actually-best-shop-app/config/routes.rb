# config/routes.rb

Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users
  get 'home/index'
  root 'home#index'



  get 'profile', to: 'profiles#show', as: 'user_profile'
  get 'up' => 'rails/health#show', as: :rails_health_check
end
