Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
  }

  root :to => 'homes#top'

  namespace :admin do
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :orders, only: [:index, :show, :update]
    resources :order_details, only: [:update]
    resources :admin_notices, only: [:index, :new, :create, :destroy] do
      collection do
        get :users
      end
    end
  end

  resources :users, only: [:index, :show]

  resources :products, only: [:index] do
    collection do
      post 'update_all'
    end
  end

  resources :cart_items do
    collection do
      post 'update_all'
      delete 'destroy_all'
    end
  end

  resources :orders, only: [:index, :show, :create] do
    collection do
      post :confirm
      get :complete
    end
  end

  resources :shares do
    resource :favorites, only: [:create, :destroy]
  end

  resources :user_notices, only: [:index, :new, :create, :destroy]

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  resources :events

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
