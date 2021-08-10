Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'

  get 'posts/all', to: 'posts#all', as: :all_posts
  get 'posts/:id', to: 'posts#show', as: :post

  get 'posts/:id/edit', to: 'posts#edit', as: :post_edit
  patch 'posts/:id', to: 'posts#update'

  delete 'posts/:id', to: 'posts#destroy'
end
