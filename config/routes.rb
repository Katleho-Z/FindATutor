Rails.application.routes.draw do
  get 'static_pages/about'
  devise_for :users

  root to: "pages#home"

  resources :blogs

  resources :students do
    resources :student_skills, only: [:new, :create, :edit, :update, :destroy]
    resources :student_reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :chatrooms, only: [:create]
  end

  resources :tutors do
    resources :tutor_skills, only: [:new, :create, :edit, :update, :destroy]
    resources :lessons, only: [:new, :create]
    resources :tutor_reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :skills, only: [:index, :show]

  resources :lessons, only: [:index, :show, :update, :edit, :destroy,]

  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
  # Other routes can be defined here
  get 'about', to: 'static_pages#about'
  mount ActionCable.server => '/cable'

end
