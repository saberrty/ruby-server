Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'

  resource :users
end
