Rails.application.routes.draw do
  root 'manuscripts#index'

  resources :names

  resources :manuscripts do
    resources :calendar_pages, only: [:new, :create, :destroy]

    get 'calendar', on: :member
  end

  resources :calendar_pages, only: [:edit, :update, :show] do
    resources :feasts, only: [:new, :create, :destroy]
  end

  resources :feasts, only: [:edit, :update, :show]

  get 'calendars/:manuscript_id', to: 'calendars#show', as: 'calendars'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end