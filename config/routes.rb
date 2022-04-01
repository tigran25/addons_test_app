Rails.application.routes.draw do
  devise_for :users

  # authenticate :user, -> (u) { u.is_admin? } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # end
  root to: "home#index"
  mount DoAddonConnector::Engine => '/marketplace'

end
