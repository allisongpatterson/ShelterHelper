class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :sort_by_column

  def sort_by_column(class_name) # allows for slightly less repeated code in other controllers
    @sortables = class_name.order(params[:sort]) ? params[:sort] : 'id'
  end

end
