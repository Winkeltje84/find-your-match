class DayMatch < ApplicationRecord
  belongs_to :student
  belongs_to :matched_student

  def self.create_day_matches
    debugger
  end
end
