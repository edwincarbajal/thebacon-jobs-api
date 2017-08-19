Rails.application.routes.draw do
  scope module: 'api', defaults: { format: 'json' } do
    namespace :v1 do
      resources :posts
      resources :users, only: [:create]
    end
  end
  post 'user_token' => 'user_token#create'
  mount Knock::Engine => "/knock"
end
