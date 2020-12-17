Rails.application.routes.draw do
  devise :users
  root 'homes#index'
end
