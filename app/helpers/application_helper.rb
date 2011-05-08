module ApplicationHelper
  def auth_url
    FlickRaw.auth_url :frob => flickr.auth.getFrob, :perms => 'read'
  end

  def logged_in?
    !session[:username].blank?
  end
end