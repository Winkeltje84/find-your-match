class DayMatch < ApplicationRecord
  belongs_to :student
  belongs_to :matched_student

  def self.pick_random_match
    debugger
  end
end
