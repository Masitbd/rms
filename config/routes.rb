Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'


resources :item_categories
  resources :configurations do 
    collection do 
      get 'update'
    end
  end
end
