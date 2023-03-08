Rails.application.routes.draw do
  resources :appointments do
    collection do
      get 'physicians', to: 'appointments#get_physicians'
      get 'patients', to: 'appointments#get_patients'
      get 'physicians_and_patients', to: 'appointments#get_physicians_and_patients'
    end
  end
  resources :physicians
  resources :patients
  resources :hospitals do
    resources :patients, only: [:create]
  end

  # Defines the root path route ("/")
  root "appointments#index"
end
