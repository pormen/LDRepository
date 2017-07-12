Rails.application.routes.draw do
  resources :asignarmultiplebeneficios
  resources :trabajadors
  resources :centrocostos
  resources :atencionsocials
  resources :logbenefits
  resources :assignbenefits
  resources :benefits
  resources :areabenefits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
