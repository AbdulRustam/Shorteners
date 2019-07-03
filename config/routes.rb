# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'links#new'
  resources 'links', only: %i[new create]
  get 'links/:short_link', to: 'links#show', as: 'link'
end
