class FlickrController < ApplicationController
  def frob
    frob = params[:frob]
    flickr.auth.getToken :frob => frob
    login = flickr.test.login
    session[:username] = login.username
    session[:userid] = login.id
    logger.info("User #{login.username} logged in - ID #{login.id}")
    redirect_to admin_path
  end

  def logout
    session.delete(:username)
    session.delete(:userid)
    logger.info("User #{session[:username]} logged out")
    redirect_to(root_path, :notice => "Signed out successfully.")
  end
end