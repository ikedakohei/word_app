Rails.application.routes.draw do
  unauthenticated :user do
    devise_scope :user do
      root to: 'devise/sessions#new'
    end
  end

  authenticated :user do
    root to: 'comments#index'
  end

  resources :comments, only: [:index, :new, :create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
