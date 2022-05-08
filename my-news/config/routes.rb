Rails.application.routes.draw do

  resources :posts, only: [:index, :create]

  devise_for :users,
    controllers: {
      sessions: 'users/sessions',
        registrations: 'users/registrations'
                 }
  get '/member-data', to: 'members#show'

end
