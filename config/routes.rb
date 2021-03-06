Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', {to: 'welcome#home', as: :root})
  get '/about', {to: 'welcome#about'}
  get '/contacts/new', {to: 'contacts#new'}
  post '/contacts', {to: 'contacts#create' }

  resources :products do
    resources :reviews, only: [:create, :destroy]
  end
  resources :users, only: [:new, :create]

  resource :session, only: [:new, :create, :destroy]
end
