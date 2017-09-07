Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete '/doses/:id', to: 'doses#destroy', as: 'doses'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
end
