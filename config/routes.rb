Rails.application.routes.draw do

  devise_for :users

  resources :events

  namespace :admin do
    resources :events do
      resources :tickets, :controller => "event_tickets"

      member do
        post :reorder
      end

      collection do
        post :bulk_update
      end
    end
    resources :users
    resources :groups
  end

  resource :user

  root "events#index"

end
