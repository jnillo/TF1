class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  after_filter :store_location

  protected

  def layout_by_resource
    if devise_controller?
      "registration"
    else
      "application"
    end
  end

  private

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    resource.sign_in_count <= 1 ? root_path : "/"
  end
end
