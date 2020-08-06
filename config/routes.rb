Rails.application.routes.draw do
  resources :feedbacks
  resources :sign_ins
  root 'welcome#index'
  devise_for :users, :controllers => { registrations: 'devise/registrations' }
  # devise_for :users controllers: { registrations: 'registrations' }
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
