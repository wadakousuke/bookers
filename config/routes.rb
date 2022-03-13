Rails.application.routes.draw do
  post "books" => "books#create"
  get "books" => "books#index"
  get "books/id" => "books#show"
  get 'top' => "homes#top"
  get "books/:id/edit" => "books#edit", as: "edit_book"
  get "books/:id" => "books#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
