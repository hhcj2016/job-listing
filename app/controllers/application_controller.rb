class ApplicationController < ActionController::Base


  def require_is_admin
    if !current_user.try(:admin?)
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end


end
