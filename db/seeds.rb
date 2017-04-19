Student.delete_all
User.delete_all

# Users
users = []
users << User.create(
  email: "test@1.com",
  password: "abc123"
)
users << User.create(
  email: "test@2.com",
  password: "abc123"
)
users << User.create(
  email: "test@3.com",
  password: "abc123"
)
users << User.create(
  email: "test@4.com",
  password: "abc123"
)

# students
students = []
students << Student.create(
  name: "nameTest1",
  user_id: 1
)
students << Student.create(
  name: "nameTest2",
  user_id: 2
)
students << Student.create(
  name: "nameTest3",
  user_id: 3
)
students << Student.create(
  name: "nameTest4",
  user_id: 4
)
