Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/destroy'

  get 'doses/create'

  get 'cocktails/index'

  get 'cocktails/new'

  get 'cocktails/create'

  get 'cocktails/show'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :dose, only: [:destroy]
end
