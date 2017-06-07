class Student < ApplicationRecord
  belongs_to :user
  has_many :day_matches

  validates :name, presence: true

  def self.get_current_user_matches(student)
    debugger
    day_match_array = []
    day_matches = DayMatch.all
    day_matches.each do |match|
      if match.student_id === student.id
        day_match_array.push(match)
      end
    end
    return day_match_array
  end
  
end
