Rails.application.routes.draw do
  # get 'bookmarks/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks # do
    #   resources :movies
    # end
  end
  # resources :movies
  resources :bookmarks
end
