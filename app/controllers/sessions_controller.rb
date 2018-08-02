class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @student = Student.find_by({user_name: params[:user_name]})

    if !!@student && @student.authenticate(params[:password])
      session[:logged_in_student_id] = @student.id
      flash[:notice] = "Login Successful!"
      redirect_to @student
    else
      falsh[:notice] = "Invalid user_name or password"
      redirect_to login_path
    end
  end

  def destroy
    session.delete :logged_in_student_id
    flash[:notice] = "logout successful!"
    redirect_to login_path
  end
end
