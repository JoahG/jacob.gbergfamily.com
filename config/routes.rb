JacobBlog::Application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'type/:type', to: 'posts#index', as: :type
  root :to => 'posts#index'
  resources :posts
end
