Rails.application.routes.draw do

  root to: 'static#index'

  mount_devise_token_auth_for 'User', at: 'auth'
end
