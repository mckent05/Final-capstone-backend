Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  devise_for :users, 
              controllers: {
                  sessions: 'users/sessions',
                  registrations: 'users/registrations'
              }  
  
  namespace :api do
    namespace :v1 , defaults: { format: 'json'} do
      resources :items, only: %i[index create destroy show]
      resources :reservations, only: %i[index create destroy]
    end
  end

  get '*path', to: 'api/v1/api#error', defaults: { format: 'json' }

  root 'api/v1/api#error', defaults: { format: 'json' }
end
