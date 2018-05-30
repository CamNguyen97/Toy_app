Rails.application.routes.draw do
  get "/help", to: "static_pages#help"
  get "static_pages/about"
  root "static_pages#home"
end
