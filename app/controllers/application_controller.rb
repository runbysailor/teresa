class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def home
    @photos = flickr.photos.search(:user_id => '12933108@N06', :per_page => 5)
    @content = Content.first
  end
  
  def gallery
    @photos = flickr.photos.search(:user_id => '12933108@N06', :per_page => 500)
  end
end