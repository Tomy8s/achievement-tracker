Rails.application.routes.draw do
  root to: 'achievements#index'

  resources :achievements
end
