Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/edit'

  get 'posts/show'

  root 'posts#index'
end
