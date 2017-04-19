class DayMatch < ApplicationRecord
  belongs_to :student
  belongs_to :matched_student
end
