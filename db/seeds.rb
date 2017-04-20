DayMatch.delete_all
Student.delete_all
User.delete_all
MatchedStudent.delete_all

# Users
# Creates 6 users that includes 2 admins (of which user1 is taken into student
# model and user6 is not)
user1 = User.create(
  email: "test@1.com",
  password: "abc123",
  admin: true
)
user2 = User.create(
  email: "test@2.com",
  password: "abc123"
)
user3 = User.create(
  email: "test@3.com",
  password: "abc123",
)
user4 = User.create(
  email: "test@4.com",
  password: "abc123"
)
user5 = User.create(
  email: "test@5.com",
  password: "abc123"
)
user6 = User.create(
  email: "test@6.com",
  password: "abc123",
  admin: true
)

# students
# Creates students that are linked to users. Except for user 5 & 6 that.
# ToDo: User 5 and 6 should be lateron added to student model.
student1 = Student.create(
  name: "nameTest1",
  user_id: user1
)
student2 = Student.create(
  name: "nameTest2",
  user_id: user2
)
student3 = Student.create(
  name: "nameTest3",
  user_id: user3
)
student4 = Student.create(
  name: "nameTest4",
  user_id: user4
)

# matched students
# This is a litteral copy of the student model, to be
# used by the day_match model
matched_student1 = MatchedStudent.create(
  name: student1.name
)
matched_student2 = MatchedStudent.create(
  name: student2.name
)
matched_student3 = MatchedStudent.create(
  name: student3.name
)
matched_student4 = MatchedStudent.create(
  name: student4.name
)

# day matches // This model will have objects with 3 keys:
# 1: the day of the matches,
# 2: the student_id (which will be used by Student to show its days & matches)
# 3: the matched_student_id (only used by student to see its match)
# This seed is double (so the SWITCHED), since each student will have to be able to call its matches
# by using its student_id!
day1_match1 = DayMatch.create(
  day: 2.day.ago,
  student_id: student1.id,
  matched_student_id: student2.id
)
day1_match1_switched = DayMatch.create(
  day: 2.day.ago,
  student_id: student2.id,
  matched_student_id: student1.id
)

day1_match2 = DayMatch.create(
  day: 2.day.ago,
  student_id: student3.id,
  matched_student_id: student4.id
)
day1_match2_switched = DayMatch.create(
  day: 2.day.ago,
  student_id: student4.id,
  matched_student_id: student3.id
)

day2_match1 = DayMatch.create(
  day: 1.day.ago,
  student_id: student1.id,
  matched_student_id: student3.id
)
day2_match1_switched = DayMatch.create(
  day: 1.day.ago,
  student_id: student3.id,
  matched_student_id: student1.id
)

day2_match2 = DayMatch.create(
  day: 1.day.ago,
  student_id: student2.id,
  matched_student_id: student4.id
)
day2_match2_switched = DayMatch.create(
  day: 1.day.ago,
  student_id: student4.id,
  matched_student_id: student2.id
)
