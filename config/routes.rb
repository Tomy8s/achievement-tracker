Rails.application.routes.draw do
  root to: 'achievements#index'

  resources :achievements

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
