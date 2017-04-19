class CreateDayMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :day_matches do |t|
      t.date :day
      t.references :student, foreign_key: true
      t.references :matched_student, foreign_key: true

      t.timestamps
    end
  end
end
