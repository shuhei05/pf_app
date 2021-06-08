Rails.application.routes.draw do

  get 'chats/show'
  # get 'shares/index'
  # get 'shares/new'
  # get 'shares/edit'
  # get 'orders/index'
  # get 'orders/show'
  # get 'cart_items/index'
  # get 'products/index'
  # get 'users/index'
  # get 'users/show'
   devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    #registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    #registrations: 'users/registrations'
  }

  root :to => 'homes#top'

  namespace :admin do
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :orders, only: [:index, :show, :update]
    resources :order_details, only: [:update]
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

  resources :orders, only: [:index, :show, :create,] do
    collection do
      post :confirm
      get :complete
    end
  end

  resources :shares do
    resource :favorites, only: [:create, :destroy]
  end

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end