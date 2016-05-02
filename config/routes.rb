Rails.application.routes.draw do

  devise_for :users

  resources :drums

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :restore
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get "profiles/:id" => "profiles#show", as: :profile

 get "profiles" => "profiles#index"
end
