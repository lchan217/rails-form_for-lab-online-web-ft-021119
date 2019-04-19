class StudentsController < ApplicationController
  def new
  end
  def show
    @student= Student.find(params[:id])
  end
  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student) #show
  end
  def edit
    @student= Student.find(params[:id])
  end
  def update
    @student= Student.find(params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)

  end
end
