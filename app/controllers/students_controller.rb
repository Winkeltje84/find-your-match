class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show]
  before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def show
    @day_match_array = Student.get_current_user_matches(@student)
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
      redirect_to :root, notice: "Your student name is changed"
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
