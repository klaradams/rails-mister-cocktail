Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, only: [:index, :show, :edit, :update, :destroy]
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :ingredients
end
