class StudentsController < ApplicationController
  
  before_action :find_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def find_student
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
