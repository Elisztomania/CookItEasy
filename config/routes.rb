Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'recipes/myrecipes', to: 'recipes#show_my', as: 'my_recipes'
  get 'recipes/favorites', to: 'recipes#show'
  resources :recipes, only: [:index, :show, :create, :new, :edit, :update] do
    resources :quantities, only: [:create, :new, :edit, :update]
    resources :ingredients, only: [:create, :new]
    resources :steps, only: [:create, :new, :edit, :update]
    resource :favorites, only: [:create]
  end

  resources :favorites, only: :destroy
end
