class Student < ApplicationRecord
  belongs_to :user
  has_many :day_matches

  validates :name, presence: true
end
