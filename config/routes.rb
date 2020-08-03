Rails.application.routes.draw do
  resources :sign_ins
  root 'welcome#index'
  devise_for :users # controllers: { sessions: 'users/sessions' }
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
