# frozen_string_literal: true

Rails.application.routes.draw do
  get 'features', controller: :home, as: :features
  get 'pricing', controller: :home, as: :pricing
  get 'about', controller: :home, as: :about
  get 'tour', controller: :home, as: :tour
  unauthenticated do
    root controller: :home, action: :index
  end
  authenticated :account do
    root to: 'dashboard#index', as: :account_root
  end
  devise_for :accounts
end
