Rails.application.routes.draw do
  resources :users, only: %i[] do
    collection do
      post 'create_user'
      get 'users_list'
      post 'delete_user'
      post 'login'
      post 'logout'
      post 'auth_session'
    end
  end
end
