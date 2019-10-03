require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root "transactions#index"
  resources :transactions do
    collection do
      post :import_file
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
