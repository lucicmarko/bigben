Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api', path: '' do
    namespace 'v1', defaults: { format: :json }  do
      resources :courses, only: [:index, :show, :create, :update, :destroy]
      resources :payments, only: [:index]
      resources :students, only: [:index, :show, :create, :destroy]
      resources :months, only: [:index]

      post 'authenticate', to: 'authentication#authenticate'
    end
  end
end
