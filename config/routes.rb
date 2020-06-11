Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'

  resources :users, only: %i[] do
    collection do
      post 'create_user'
      get 'users_list'
      post 'delete_user'
    end
  end
end
