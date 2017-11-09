Rails.application.routes.draw do
  resources :manuscripts do
    resources :calendar_pages, only: [:new, :create, :destroy]
    # resources :feasts, only: [:new, :create, :destroy]
  end

  resources :calendar_pages, only: [:edit, :update, :show] do
    resources :feasts, only: [:new, :create, :destroy]
  end

  resources :feasts, only: [:edit, :update, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'manuscripts#index'
end





  #  resources :manuscripts do
  #   resources :calendar_pages
  #   resources :feasts
  # end