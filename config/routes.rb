Rails.application.routes.draw do
  root 'home#index'
  get '/donate', to: 'home#donate'
  get '/donate/donorfy', to: 'home#donorfy'
end
