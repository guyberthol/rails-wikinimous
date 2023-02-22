Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :articles

  resources :articles do
    collection do
      get 'search'
    end
  end

  patch 'tasks/:id/complete', to: 'tasks#complete', as: :complete_task
end
