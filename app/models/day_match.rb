class DayMatch < ApplicationRecord
  belongs_to :student
  belongs_to :matched_student

  def self.create_day_matches
    matches_array = []
    student_count = Student.count
    student_id_array = [] #empty array to use for inserting student ids
    students = Student.all
    students.each do | student | #create an array of all student ids
      student_id_array << student.id
    end

    while student_count > 0 do
      matches_array << create_single_match(student_id_array, matches_array)
      student_count -= 2 #decrement by two since two have been added to matches_array
    end
    create_two_day_matches_per_match(matches_array)
    student_count = Student.count
    add_matched_student_to_student_matches_array(matches_array, student_count)
  end

  def self.create_single_match(student_id_array, matches_array)
    left_over_students = student_id_array.map { |id| id }
    if matches_array != [] # if no previous matches have been made this can be skipped
      matches_array.each { |match|
        left_over_students.delete(match[0])
        left_over_students.delete(match[1])
      }    #takes out the previous match of this day
    end
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

  def self.pick_random_student(student_id_array)
    student_id = student_id_array.sample
    return student_id
  end

  def self.create_two_day_matches_per_match(matches_array)
    # creates matches in two directions for each match
    matches_array.each do |match|
      match_one_way = DayMatch.create(
        day: Date.today,
        student_id: match[0],
        matched_student_id: match[1]
      )
      match_other_way = DayMatch.create(
        day: Date.today,
        student_id: match[1],
        matched_student_id: match[0]
      )
    end
  end

  def self.add_matched_student_to_student_matches_array(matches_array, student_count)
    if matches_array.count >= (student_count / 2) #matches array should not be updated if they array consists all other students already
      matches_array.each do |match|
        first_student = Student.find(match[0])
        first_student.matches << match[1]
        first_student.save
        second_student = Student.find(match[1])
        second_student.matches << match[0]
        second_student.save
      end
    end

  end

end
