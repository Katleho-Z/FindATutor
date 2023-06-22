Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

resources :students do
  resources :student_skills, only: [:new, :create, :edit, :update, :destroy]
  resources :student_reviews, only: [:new, :create, :edit, :update, :destroy]
end

resources :tutors do
  resources :tutor_skills, only: [:new, :edit, :create, :edit, :update, :destroy,]
  resources :tutor_reviews, only: [:new, :edit, :create, :edit, :update, :destroy,]
end
resources :skills, only: [:index, :show,]
  # Defines the root path route ("/")
  # root "articles#index"
  resources :tutors
end
