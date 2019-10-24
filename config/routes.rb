Rails.application.routes.draw do
  # resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  # resources :genres, only: [:index, :show, :new, :create, :edit, :update]
  # resources :songs, only: [:index, :show, :new, :create, :edit, :update]

  # get 'artists/index', to: 'artists#index'
  # get 'artists/show', to: 'artists#show'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  resources :songs
  resources :genres
end
