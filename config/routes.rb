Rails.application.routes.draw do
  resources :user_lessons
  resources :labs
  resources :lessons
  resources :enrollments
  resources :courses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
