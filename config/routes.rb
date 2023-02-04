Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "login#login"



  # path w url    kontroler# funkcja
  get 'home' => 'home#home'
  get 'login' => 'login#login'
  post 'login' => 'login#create'
  delete 'destroy' => 'login#destroy'
  get 'upload' => 'upload#upload'
  post 'submit' => 'upload#submit'
  get 'result' => 'upload#result'
  get "download_image" =>'shared#download'
  get 'history' =>'shared#history'
  get 'shared' => 'shared#shared'
  get 'myphotos' => 'shared#my_photos'
end
