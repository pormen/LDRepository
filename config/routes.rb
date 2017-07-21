Rails.application.routes.draw do
  resources :asignarmultiplebeneficios do
    collection do
      get 'get_contacts', to: "asignarmultiplebeneficios#get_contacts"
    end

    collection do
      get 'get_trabajadorporobra', to: "asignarmultiplebeneficios#get_trabajadorporobra"
    end
  end

  resources :trabajadors
  resources :centrocostos
  resources :atencionsocials
  resources :logbenefits
  resources :assignbenefits
  resources :benefits
  resources :areabenefits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
