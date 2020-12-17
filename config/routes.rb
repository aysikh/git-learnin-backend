Rails.application.routes.draw do
    devise_for :users, :controllers => { registrations: 'registrations'}
    resources :user_lessons
    resources :labs
    resources :lessons
    resources :enrollments
    resources :courses
    resources :users

    post "/login", to: "users#login", as: "login"
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
