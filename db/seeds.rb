# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Session.destroy_all
TutorSkill.destroy_all
StudentSkill.destroy_all
Tutor.destroy_all
Student.destroy_all
Skill.destroy_all
User.destroy_all

# Create Users
puts "Creating users..."
user1 = User.create!(email: "eti@example.com", password: "password1")
user2 = User.create!(email: "mzi@example.com", password: "password2")
user3 = User.create!(email: "kat@example.com", password: "password3")
user4 = User.create!(email: "alex@example.com", password: "password4")
# ...

# Create skill
puts "Creating skills..."
maths_skill = Skill.create!(
  name: "Mathematics"
)
puts "math"

english_skill = Skill.create!(
  name: "English"
)
puts "Eng"

photography_skill = Skill.create!(
  name: "Photography"
)
puts "photo"

painting_skill = Skill.create!(
  name: "Painting"
)
puts "paint"
illustration_skill = Skill.create!(
  name: "Illustration"
)
puts "illus"

biology_skill = Skill.create!(
  name: "Biology"
)
puts "bio"

# Create Tutor
puts "Creating tutors..."
tutor1 = Tutor.create!(
  first_name: "Eti",
  last_name: "Nkanga",
  profile_image: "app/assets/images/tutors/eti.jpg",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "eti@example.com",
  bio: "Experienced tutor with a passion for Photography.",
  user: user1
)

tutor2 = Tutor.create!(
  first_name: "Mzi",
  last_name: "Mthethwa",
  profile_image: "app/assets/images/tutors/mzi.jpg",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "mzi@example.com",
  bio: "Experienced tutor with a passion on teaching.",
  user: user2
)

# Create Students
puts "Creating students..."
student1 = Student.create!(
  first_name: "Kat",
  last_name: "Zonke",
  profile_image: "app/assets/images/tutors/kat.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user3
)

# Create Student
student2 = Student.create!(
  first_name: "Alex",
  last_name: "April",
  profile_image: "app/assets/images/tutors/alex.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user4
)

# Creating tutor's skills
puts "Creating tutor_skills..."
tutor_skill1 = TutorSkill.create!(
  tutor: tutor1,
  skill: maths_skill,
  level: rand(1..5)
)

tutor_skill2 = TutorSkill.create!(
  tutor: tutor1,
  skill: english_skill,
  level: rand(1..5)
)

# Create student skills
puts "Creating student_skills..."
student_skill1 = StudentSkill.create!(
  student: student1,
  skill: photography_skill,
  level: rand(1..5)
)

student_skill2 = StudentSkill.create!(
  student: student2,
  skill: illustration_skill,
  level: rand(1..5)
)

# Creating Sessions

puts "Creating sessions..."
session1 = Session.create!(
  tutor: tutor1,
  student: student1,
  date: Date.today,
  time: Time.now,
  amount_offered: 50.0,
  status: "Pending",
  skill: english_skill
)

session2 = Session.create!(
  tutor: tutor2,
  student: student2,
  date: Date.tomorrow,
  time: Time.now + 1.hour,
  amount_offered: 75.0,
  status: "Confirmed",
  skill: painting_skill
)
