Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

resources :blogs


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

end
