Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :dose, only: [:destroy]
end
