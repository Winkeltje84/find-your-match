class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update]
  before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def create
    @student = current_user.build_student(student_params)

    if @student.save
      redirect_to edit_student_path(@student), notice: "student successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to edit_student_path(@student), notice: "student successfully updated"
    else
      render :edit
    end
  end

  private
    def set_student
      @student = current_user.student
    end

    def student_params
      params.require(:student).permit(:name)
    end
end
