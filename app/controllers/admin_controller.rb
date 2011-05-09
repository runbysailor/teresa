class AdminController < ApplicationController
  before_filter :confirm_account
	layout 'admin'
	
  def content
    @content = Content.first
  end
  
  def update
    @content = Content.first
    
    if @content.update_attributes(params[:content])
      redirect_to(root_path, :notice => "Content successfully updated.")
    else
      render :action => "edit", :notice => "Something has gone terribly wrong."
    end
  end
    
  def confirm_account
    if session[:username] == nil
      redirect_to(root_path, :notice => "Please sign in with Flickr.")
    else
      if session[:username] == 'teresaalcorn'
        @current_user = session[:userid]
      else
        session.delete(:username)
        session.delete(:userid)
        logger.info("User #{session[:username]} logged out")
        redirect_to(root_path, :notice => "You must be my mom.")    
      end
    end
  end
end