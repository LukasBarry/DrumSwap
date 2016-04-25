Rails.application.routes.draw do
  devise_for :users

  resources :drums

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'
end
