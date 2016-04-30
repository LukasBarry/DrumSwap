Rails.application.routes.draw do
  
  devise_for :users

  resources :drums

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get "profiles/:id" => "profiles#show", as: :profile

 get "profiles" => "profiles#index"
end
