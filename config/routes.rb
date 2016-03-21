Rails.application.routes.draw do

  resources :criterions
  resources :hotels
  
  root 'hotels#index'

end
