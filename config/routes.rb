Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #author
  get "/authors", to: "author#index"
  post "/authors", to:"author#add"
  get "/authors/getbooks", to:"author#getbooks"
  #book
  get "/books", to: "book#index"
  post "/books", to:"book#add"
end
