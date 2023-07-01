Rails.application.routes.draw do
  get 'static_pages/about'
  devise_for :users

  root to: "pages#home"

<<<<<<< HEAD
=======



>>>>>>> master
  resources :blogs

  resources :lessons, only: [:new, :create]

  resources :students do
    resources :student_skills, only: [:new, :create, :edit, :update, :destroy]
    resources :student_reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :tutors do
    resources :tutor_skills, only: [:new, :create, :edit, :update, :destroy]
    resources :tutor_reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :skills, only: [:index, :show]

  resources :lessons, only: [:index, :create, :show, :update, :edit, :destroy,]


  # Other routes can be defined here


  get 'about', to: 'static_pages#about'


end
