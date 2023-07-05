Rails.application.routes.draw do
  get 'top' => 'homes#top'
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books #only: [:create,:index,:show,:edit,:update]
end
