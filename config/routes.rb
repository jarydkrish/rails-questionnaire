Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :questions, only: [:index, :show] do
    resources :answers
  end

  devise_scope :user do
    namespace :admin do
      get 'sign_in', to: 'devise/sessions#new'
    end
  end
  authenticate :user do
    namespace :admin do
      resources :questions
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
