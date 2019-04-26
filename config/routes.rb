Rails.application.routes.draw do
  resources :posts do
  	member do
  		patch :restore
  	end
    resources :comments, except: [:show, :edit]
  end
  resources :comments
  get '/trash', to: 'trash#trash'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
