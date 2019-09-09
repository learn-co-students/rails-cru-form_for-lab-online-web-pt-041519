Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :songs, only: [:new, :create, :show, :edit, :update, :index]
resources :artists, only: [:new, :create, :show, :edit, :update]
resources :genres, only: [:new, :create, :show, :edit, :update]

end
