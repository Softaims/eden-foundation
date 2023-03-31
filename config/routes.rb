Rails.application.routes.draw do
  root 'home#index'
  get '/donate', to: 'home#donate'
  get '/donate/donorfy', to: 'home#donorfy'
  get '/our-centers', to: 'home#our_centers', as: 'our_centers'
  get '/contact', to: 'home#contact'
  get '/prayer-timetable', to: 'home#prayer_timetable', as: 'prayer_timetable'
end
