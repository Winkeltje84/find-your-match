class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show]
  before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def show
    @day_match_array = get_current_user_matches
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

    def get_current_user_matches
      day_match_array = []
      day_matches = DayMatch.all
      day_matches.each do |match|
        if match.student_id === @student.id
          day_match_array.push(match)
        end
      end
      return day_match_array
    end
end
