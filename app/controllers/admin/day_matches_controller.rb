class Admin::DayMatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_is_admin?

  def index
    # debugger
    @day_matches = DayMatch.all
    # debugger
  end

  def create
    # called from view to create a new set of day_matches
    # debugger
    # current_day = Date.today
    create_day_matches
  end

  # def create_day_matches
  #   debugger
  # end

  def new
    # called for every new day_matches line
  end


  private

  def user_is_admin?
    redirect_to :root unless current_user && current_user.admin?
  end

  def create_day_matches
    # debugger
    matches_array = []
    student_count = Student.count
    student_id_array = [] #empty array to use for inserting student ids
    students = Student.all
    students.each do | student | #create an array of all student ids
      student_id_array << student.id
    end
    # debugger

    while student_count > 0 do
      debugger
      matches_array << create_single_match(student_id_array)
      debugger
      student_count -= 2 #decrement by two since two have been added to matches_array
    end
    debugger

    # debugger
    match_array = [] #create an array where all matches will be saved (array of arrays)
    # debugger
    # pick_random_match(student_id_array)

  end

  def create_single_match(student_id_array)
    debugger
    left_over_students = student_id_array.map { |id| id }
    if (matches_array != []) { # if no previous matches have been made this can be skipped
      matches_array.each { |match|
        left_over_students.delete(match[0])
        left_over_students.delete(match[1])
      }    #takes out the previous match of this day
    }
    #UP TO HERE NOW, THE student_id_array WILL NOT BE changed
    first_student_in_match = pick_random_student(left_over_students)
    left_over_students.delete(first_student_in_match) # deletes first student of match from the student_id_array and puts that in a left_over_students array
    student_earlier_matches = Student.find(first_student_in_match).matches
    student_earlier_matches.each do |match| # deletes all previous matches from student_id_array
      match = match.to_i
      left_over_students.delete(match)
    end
    match = [first_student_in_match, left_over_students.sample]
    return match
  end

  def pick_random_student(student_id_array)
    student_id = student_id_array.sample
    return student_id
  end

end
