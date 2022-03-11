Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount DoAddonConnector::Engine => '/connectors'
  # devise_for :users
  root to: "home#index"
end
