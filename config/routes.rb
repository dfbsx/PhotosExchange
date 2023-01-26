Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#home"



  # path w url    kontroler# funkcja
  get 'login' => 'login#login'
  post 'login' => 'login#create'
  delete 'destroy' => 'login#destroy'
  get 'upload' => 'upload#upload'
  get 'shared' => 'shared#shared'
  get 'myphotos' => 'shared#my_photos'
end
