Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api', path: '' do
    namespace 'v1', defaults: { format: :json }  do
      resources :courses, only: [:index]
      resources :payments, only: [:index]
      resources :students, only: [:index]
      resources :months, only: [:index]
    end
  end
end
