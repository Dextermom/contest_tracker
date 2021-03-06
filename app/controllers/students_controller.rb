class StudentsController < ApplicationController
  def index
    @students = Student.order(:grad_year)

  end

  def show
  @student = Student.find(params[:id])
  @entries = @student.selections
  end

  def new
  @student = Student.new
  end

  def create
  @student = Student.new(student_params)
  if @student.save
    redirect_to @student, notice: "Student Added"
  else
    render :new
  end
  end

  def edit
  @student = Student.find(params[:id])
  end

  def update
  @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path, notice: "Student successfully updated!"
    else
      render :edit
    end
  end

  def destroy
  @student = Student.find(params[:id])
  @student.destroy
  redirect_to root_url, alert: "Student successfully deleted!"
  end

private
  def student_params
    params.require(:student).permit(:name, :grad_year)
  end
end
