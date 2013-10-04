JacobBlog::Application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'type/:type', to: 'posts#index', as: :type
  get 'archive', to: 'posts#archive', as: "archive"
  get 'admin', to: 'posts#admin', as: "admin"
  get 'resources', to: 'posts#resources', as: "resources"
  get 'about', to: 'posts#about', as: "about"
  root :to => 'posts#index'
  resources :posts
end
