Rails.application.routes.draw do
  resources :mpesas
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get "/member_details", to: "members#index"

  post 'stkpush', to: 'mpesas#stkpush'
  post 'stkquery', to: 'mpesas#stkquery'
  resources :categories
end
