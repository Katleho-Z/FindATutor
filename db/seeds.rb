# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Tutor.destroy_all
Student.destroy_all
Skill.destroy_all
Session.destroy_all

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

english_skill = Skill.create!(
  name: "English"
)

photography_skill = Skill.create!(
  name: "Photography"
)

painting_skill= Skill.create!(
  name: "Painting"
)

illustration_skill = Skill.create!(
  name: "Illustration"
)

biology_skill = Skill.create!(
  name: "Biology"
)

# Create Tutor
puts "Creating tutors..."
tutor1 = Tutor.create!(
  first_name: "Eti",
  last_name: "Nkanga",
  profile_image: "john-doe.jpg",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "eti@example.com",
  bio: "Experienced tutor with a passion for Photography.",
  user: user1
)

tutor2 = Tutor.create!(
  first_name: "Mzi",
  last_name: "Mthethwa",
  profile_image: "john-doe.jpg",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "eti@example.com",
  bio: "Experienced tutor with a passion for teaching.",
  user: user2
)

# Create Students
puts "Creating students..."
student1 = Student.create!(
  first_name: "Kat",
  last_name: "Zonke",
  profile_image: "john-doe.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user3
)

# Create Student
student2 = Student.create!(
  first_name: "Alex",
  last_name: "April",
  profile_image: "john-doe.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user4
)

# Creating Sessions
puts "Creating sessions..."
session1 = Session.create!(
  tutor: tutor1,
  student: student1,
  date: Date.today,
  time: Time.now,
  amount_offered: 50.0,
  status: "Pending"
)

session2 = Session.create!(
  tutor: tutor2,
  student: student2,
  date: Date.tomorrow,
  time: Time.now + 1.hour,
  amount_offered: 75.0,
  status: "Confirmed"
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

tutor_profile1 = TutorProfile.create(
  bio: 'My name is Mzi and I am a graphic designer',
  location: 'Joburg',
  skills: 'Photography',
  student_reviews: 'He is very good at mentoring'
)

tutor_profile2 = TutorProfile.create(
  bio: 'My name is Kat and I am a content creator',
  location: 'Cape Town',
  skills: 'Film',
  student_reviews: 'He takes his time and very good'
)
