class StudentsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      flash[:notice] = "Account successfully created!"
      session[:logged_in_student_id] = @student.id
      redirect_to @student
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:user_name, :password)
  end

end
