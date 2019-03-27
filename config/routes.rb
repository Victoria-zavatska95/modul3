Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root 'pages#index'
   get "pages/contact", to: "pages#contact", as: "contact"
   get "pages/room1", to: "pages#room1", as: "room1"
   get "pages/room2", to: "pages#room2", as: "room2"
    get "pages/room3", to: "pages#room3", as: "room3"
end
