Rails.application.routes.draw do


  # resources :powers, only: [:index, :show]
  # resources :heroines, only: [:index, :show, :new, :create]
#  I could have left these in but wanted to play around more so added a broader access

  resources :powers, :heroines
end
