Teresa::Application.routes.draw do  
  match '/admin/content' => "admin#update", :via => :put, :as => 'content'  
  match '/admin' => "admin#content", :as => :admin
  match '/gallery' => "application#gallery"
  match '/frob' => "flickr#frob", :as => :frob
  match '/logout' => "flickr#logout", :as => :logout  
  root :to => "application#home"
end