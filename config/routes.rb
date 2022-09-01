# frozen_string_literal: true

Rails.application.routes.draw do
  # root 'welcome#index'
  root 'posts#index'
  resources :posts
  devise_for :admins, controllers: { registrations: 'registrations' }

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
