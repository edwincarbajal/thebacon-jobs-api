Rails.application.routes.draw do
  scope module: 'api', defaults: { format: 'json' } do
    namespace :v1 do
      resources :users, only: [:create, :show] do
        resources :posts, only: [:show, :create, :edit, :destroy]
      end
      resources :posts, only: [:index, :show]
    end
  end
  post 'user_token' => 'user_token#create'
  mount Knock::Engine => "/knock"
end
