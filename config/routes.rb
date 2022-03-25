Rails.application.routes.draw do
  namespace :api do
    namespace :v1 , defaults: { format: 'json'} do
      resources :items, only: %i[index create destroy show]
      resources :reservations, only: %i[index create destroy]
    end
  end

  get '*path', to: 'api/v1/api#error', defaults: { format: 'json' }

  root 'api/v1/api#error', defaults: { format: 'json' }
end
