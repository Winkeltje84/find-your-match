class Student < ApplicationRecord
  belongs_to :user
  has_many :day_matches

  validates :name, presence: true

  def self.get_current_user_matches(student)
    day_match_array = []
    day_matches = DayMatch.all
    day_matches.each do |match|
      if match.student_id === student.id
        matched_student_name = get_matched_student_name(match.matched_student_id) #this 'matched_student_name' is still unused
        day_match_array.push(match)
      end
    end
    debugger
    return day_match_array
  end

  def self.get_matched_student_name(matched_student_id)
    debugger
    matched_student_name = Student.select{ |student| student.id == matched_student_id}[0].name
    return matched_student_name
  end

end
