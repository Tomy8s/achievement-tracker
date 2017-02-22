Rails.application.routes.draw do
  get 'endorsements/create'

  root to: 'achievements#index'

  resources :achievements do
    resources :endorsements
  end


end
