Rails.application.routes.draw do
  root to: 'achievements#index'

  get 'achievements/create'

  get 'achievements/new'

  get 'achievements/index'

  get 'achievements/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
