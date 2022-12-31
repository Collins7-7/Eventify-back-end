Rails.application.routes.draw do
  resources :categories
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get "/member_details", to: "members#index"
end
