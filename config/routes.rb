# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index'
  
  devise_for :admins, :controllers => { registrations: 'registrations' }
  #  controllers: {
  #  sessions: 'admins/sessions'
    
  # }

  # devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
