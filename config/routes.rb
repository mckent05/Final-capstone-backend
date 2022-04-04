Rails.application.routes.draw do
  devise_for :users, 
              controllers: {
                  sessions: 'users/sessions',
                  registrations: 'users/registrations'
              }  
  
  namespace :api do
    namespace :v1 , defaults: { format: 'json'} do
      resources :items, only: %i[index create destroy show]
      resources :reservations, only: %i[index create destroy]
      resources :itemreservations, only: %i[show]
    end
  end

  get '*path', to: 'api/v1/api#error', defaults: { format: 'json' }

  root 'api/v1/api#error', defaults: { format: 'json' }
end
