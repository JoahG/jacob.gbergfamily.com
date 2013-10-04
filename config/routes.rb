JacobBlog::Application.routes.draw do
  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'type/:type', to: 'posts#index', as: :type
  get 'archive', to: 'posts#index', :archive => true, as: "archive"
  get 'admin', to: 'posts#admin', as: "admin"
  get 'about', to: 'posts#about', as: "about"
  get 'login', to: 'sessions#new', as: "login"
  get 'logout', to: 'sessions#destroy', as: "logout"
  root :to => 'posts#index'
  resources :posts, :resources, :sessions, :users
end
