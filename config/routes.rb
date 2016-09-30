Rails.application.routes.draw do
  post 'auth/login'

  get 'auth/logout'

  get 'auth/home'

  get 'auth/landing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
