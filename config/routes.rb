Rails.application.routes.draw do
  apipie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :books
      resource :rent_books, only: :create
      resource :return_books, only: :create
    end
  end
end
