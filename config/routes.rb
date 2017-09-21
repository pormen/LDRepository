Rails.application.routes.draw do
  resources :logloans
  resources :logas
  resources :obras
  resources :familiartrabajadors
  resources :logbenefitsfinals do
    collection do
      post 'saveLogFinal', to: "logbenefitsfinals#saveLogFinal"
    end
  end



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

  resources :pages do
    get :download_pdf


  end

  get '/reportspannel' => 'pages#reportspannel'
  get '/benefitPanel' => 'pages#benefitPanel' 
  post '/logBeneficiosCheckAsistencia' => 'pages#logBeneficiosCheckAsistencia' 
  post '/indexBenefitPerName' => 'pages#indexBenefitPerName' 

  get 'download_pdf' => 'pages#download_pdf'  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
