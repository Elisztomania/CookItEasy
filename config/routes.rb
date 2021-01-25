Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'recipes/myrecipes', to: 'recipes#show_my', as: 'my_recipes'
  resources :recipes, only: [:index, :show, :create, :new, :edit, :update] do
    resources :quantities, only: [:create, :new, :edit, :update]
    resources :ingredients, only: [:create, :new]
    resources :steps, only: [:create, :new, :edit, :update]
    ressource :favorites, only: [:create]
  end

  ressource :favorites, only: :destroy
end
