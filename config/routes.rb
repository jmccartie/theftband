Theftband::Application.routes.draw do

  resources :shows
  resources :updates
  get "videos" => "home#videos", :as => "videos"
  get "listen" => "home#listen", :as => "listen"
  get "supported" => "home#supported", :as => "supported"

  devise_for :users

  root :to => "home#index"

end
