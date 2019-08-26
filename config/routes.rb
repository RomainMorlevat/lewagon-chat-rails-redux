Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :channels, only: [], param: :name do
        resources :messages, only: %i[index create]
      end
    end
  end

  resources :channels, only: %i[show], param: :name
  root to: 'channels#show'
end
