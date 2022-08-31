# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
    registrations: 'admins/registrations'
  }

  # devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
