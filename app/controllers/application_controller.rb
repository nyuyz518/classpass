class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :logged_in?, :current_student

  def current_student
    @student = Student.find_by(id:session[:logged_in_student_id])
  end

  def logged_in?
    !!current_student
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page."
      redirect_to login_path
    end
  end 

end
