Rails.application.routes.draw do

  root 'admin/users#index', as: 'user'

  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  namespace :admin do
    resources :users
  end
end
