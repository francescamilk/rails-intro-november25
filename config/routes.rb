Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # localhost:3000/
  # get "/", to: "pages#home"
  root to: "pages#home"

  # verb (localhost:3000)"/path", to: "controller#action"
  get "about", to: "pages#about"

  # localhost:3000/contact
  get "contact", to: "pages#contact"
end
