Rails.application.routes.draw do
  devise_for :users
  root to: 'acheivements#index'

  get 'acheivements/create'

  get 'acheivements/new'

  get 'acheivements/index'

  get 'acheivements/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
