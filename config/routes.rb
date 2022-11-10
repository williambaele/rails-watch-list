Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    resources :movies
    resources :bookmarks
    resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
end
