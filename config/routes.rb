Rails.application.routes.draw do

  root 'posts#index', as: 'index'

  get 'admin', to: 'admin#index'
  get 'post/:id', to: 'posts#show', as: 'post'
  get 'category/:name', to: 'categories#show', as: 'category'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  namespace :admin do
    resources :users, :post_cats, :categories, :posts
  end
end
