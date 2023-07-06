require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Lesson.destroy_all
TutorSkill.destroy_all
StudentSkill.destroy_all
Chatroom.destroy_all
Message.destroy_all
Tutor.destroy_all
Student.destroy_all
Skill.destroy_all
User.destroy_all

# Create Users
puts "Creating users..."



# These users are tutors:
user1 = User.create!(email: "eti@example.com", password: "password1")
user2 = User.create!(email: "mzi@example.com", password: "password1")
user3 = User.create!(email: "kat@example.com", password: "password1")
user4 = User.create!(email: "alex@example.com", password: "password1")
user5 = User.create!(email: "ben@example.com", password: "password1")
user6 = User.create!(email: "sue@example.com", password: "password1")
user7 = User.create!(email: "lisa@example.com", password: "password1")
user8 = User.create!(email: "bob@example.com", password: "password1")
user9 = User.create!(email: "ann@example.com", password: "password1")
user10 = User.create!(email: "ken@example.com", password: "password1")

# These users are students:
user11 = User.create!(email: "ivy@example.com", password: "password1")
user12 = User.create!(email: "ada@example.com", password: "password1")
user13 = User.create!(email: "tom@example.com", password: "password1")
user14 = User.create!(email: "joy@example.com", password: "password1")
user15 = User.create!(email: "matt@example.com", password: "password1")
user16 = User.create!(email: "lucy@example.com", password: "password1")
user17 = User.create!(email: "paul@example.com", password: "password1")
user18 = User.create!(email: "emma@example.com", password: "password1")
user19 = User.create!(email: "mark@example.com", password: "password1")
user20 = User.create!(email: "jane@example.com", password: "password1")

# ...

puts "Creating skills..."

html_skill = Skill.create!(name: "HTML")
css_skill = Skill.create!(name: "CSS")
javascript_skill = Skill.create!(name: "JavaScript")
php_skill = Skill.create!(name: "PHP")
react_skill = Skill.create!(name: "React")
angular_skill = Skill.create!(name: "Angular")
nodejs_skill = Skill.create!(name: "Node.js")
express_skill = Skill.create!(name: "Express")
mongodb_skill = Skill.create!(name: "MongoDB")
mysql_skill = Skill.create!(name: "MySQL")
git_skill = Skill.create!(name: "Git")
heroku_skill = Skill.create!(name: "Heroku")



# Create Tutors
puts "Creating tutors..."
tutor2 = Tutor.create!(
  first_name: "Sarah",
  last_name: "Thompson",
  profile_image: "https://avatars.githubusercontent.com/u/79476804?v=4",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "sarah@example.com",
  bio: "Experienced tutor with a passion for Photography.",
  user: user1
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589363/tutors_2_uf3khr.jpg")
tutor2.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor2.save

tutor3 = Tutor.create!(
  first_name: "Michael",
  last_name: "Roberts",
  profile_image: "mzi.jpg",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "michael@example.com",
  bio: "Experienced tutor with a passion on teaching.",
  user: user2
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589360/tutors_3_tj9otg.jpg")
tutor3.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor3.save

tutor4 = Tutor.create!(
  first_name: "Ben",
  last_name: "Johnson",
  profile_image: "https://avatars.githubusercontent.com/u/79476807?v=4",
  availability: "Monday, Wednesday, Friday",
  location: "Cape Town",
  email_address: "ben@example.com",
  bio: "Experienced tutor with a passion for Computer Science.",
  user: user3
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589347/tutors_9_ozxvyn.jpg")
tutor4.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor4.save

tutor5 = Tutor.create!(
  first_name: "Sue",
  last_name: "Smith",
  profile_image: "https://avatars.githubusercontent.com/u/79476808?v=4",
  availability: "Tuesday, Thursday",
  location: "Johannesburg",
  email_address: "sue@example.com",
  bio: "Experienced tutor with a passion for English Literature.",
  user: user4
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589337/tutors_5_qmwgia.jpg")
tutor5.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor5.save

tutor6 = Tutor.create!(
  first_name: "Olivia",
  last_name: "Johnson",
  profile_image: "https://avatars.githubusercontent.com/u/79476809?v=4",
  availability: "Monday, Wednesday, Friday",
  location: "Pretoria",
  email_address: "lisa@example.com",
  bio: "Experienced tutor with a passion for Music.",
  user: user5
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589345/tutors_7_owlozz.jpg")
tutor6.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor6.save

tutor7 = Tutor.create!(
  first_name: "Bob",
  last_name: "Williams",
  profile_image: "https://avatars.githubusercontent.com/u/79476810?v=4",
  availability: "Tuesday, Thursday, Saturday",
  location: "Durban",
  email_address: "bob@example.com",
  bio: "Experienced tutor with a passion for Art History.",
  user: user6
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589322/tutors_10_cntvad.jpg")
tutor7.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor7.save

tutor8 = Tutor.create!(
  first_name: "James",
  last_name: "Johnson",
  profile_image: "https://avatars.githubusercontent.com/u/79476811?v=4",
  availability: "Monday, Wednesday, Friday",
  location: "Bloemfontein",
  email_address: "john@example.com",
  bio: "Experienced tutor with a passion for Physics.",
  user: user7
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589324/tutors_4_bpo7yp.jpg")
tutor8.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor8.save

tutor9 = Tutor.create!(
  first_name: "Ken",
  last_name: "Anderson",
  profile_image: "https://avatars.githubusercontent.com/u/79476812?v=4",
  availability: "Tuesday, Thursday",
  location: "Port Elizabeth",
  email_address: "ken@example.com",
  bio: "Experienced tutor with a passion for Chemistry.",
  user: user8
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589318/tutors_8_e252ah.jpg")
tutor9.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor9.save

tutor10 = Tutor.create!(
  first_name: "Ivy",
  last_name: "Thomas",
  profile_image: "https://avatars.githubusercontent.com/u/79476813?v=4",
  availability: "Monday, Wednesday, Friday",
  location: "Nelspruit",
  email_address: "ivy@example.com",
  bio: "Experienced tutor with a passion for Biology.",
  user: user9
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589337/tutors_5_qmwgia.jpg")
tutor10.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor10.save

tutor11 = Tutor.create!(
  first_name: "Ada",
  last_name: "Jackson",
  profile_image: "https://avatars.githubusercontent.com/u/79476814?v=4",
  availability: "Tuesday, Thursday, Saturday",
  location: "Kimberley",
  email_address: "ada@example.com",
  bio: "Experienced tutor with a passion for Geology.",
  user: user10
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589329/tutors_6_f76gaw.jpg")
tutor11.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
tutor11.save

# tutor12 = Tutor.create!(
#   first_name: "Tom",
#   last_name: "White",
#   profile_image: "https://avatars.githubusercontent.com/u/79476815?v=4",
#   availability: "Monday, Wednesday, Friday",
#   location: "Polokwane",
#   email_address: "tom@example.com",
#   bio: "Experienced tutor with a passion for Astronomy.",
#   user: user13
# )

# file = URI.open("https://res.cloudinary.com/dqzwiyi26/image/upload/v1687602031/Mzi_tutor.jpg")
# tutor12.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
# tutor12.save

# tutor13 = Tutor.create!(
#   first_name: "Joy",
#   last_name: "Harris",
#   profile_image: "https://avatars.githubusercontent.com/u/79476816?v=4",
#   availability: "Tuesday, Thursday",
#   location: "Rustenburg",
#   email_address: "joy@example.com",
#   bio: "Experienced tutor with a passion for Sociology.",
#   user: user14
# )

# file = URI.open("https://res.cloudinary.com/dqzwiyi26/image/upload/v1687602031/Mzi_tutor.jpg")
# tutor13.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
# tutor13.save

# Create Students
puts "Creating students..."
student1 = Student.create!(
  first_name: "Samuel",
  last_name: "Turner",
  profile_image: "kat.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user11
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589335/students_6_vvodgw.jpg")
student1.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student1.save

student2 = Student.create!(
  first_name: "Isabella",
  last_name: "Davis",
  profile_image: "alex.jpg",
  phone_number: 1234567890,
  bio: "A motivated student eager to learn.",
  user: user12
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589340/students_8_nl118r.jpg")
student2.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student2.save

student3 = Student.create!(
  first_name: "Ethan",
  last_name: "Harris",
  profile_image: "ivy.jpg",
  phone_number: 1234567890,
  bio: "Eager to learn about biology and life science.",
  user: user13
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589340/students_7_vuik8t.jpg")
student3.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student3.save

student4 = Student.create!(
  first_name: "Elizbeth",
  last_name: "Brown",
  profile_image: "ada.jpg",
  phone_number: 1234567890,
  bio: "Interested in studying geology and Earth's structure.",
  user: user14
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589346/students_2_alrefm.jpg")
student4.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student4.save

student5 = Student.create!(
  first_name: "Tom",
  last_name: "White",
  profile_image: "tom.jpg",
  phone_number: 1234567890,
  bio: "Ready to explore the mysteries of astronomy.",
  user: user15
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589342/students_9_mfec68.jpg")
student5.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student5.save

student6 = Student.create!(
  first_name: "Jayson",
  last_name: "Harris",
  profile_image: "joy.jpg",
  phone_number: 1234567890,
  bio: "Passionate about understanding the intricacies of sociology.",
  user: user16
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688589351/students_1_eqq3ls.jpg")
student6.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student6.save

student7 = Student.create!(
  first_name: "Matt",
  last_name: "Johnson",
  profile_image: "matt.jpg",
  phone_number: 1234567890,
  bio: "Interested in learning about computer science.",
  user: user15
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591446/students_4_xherw5.jpg")
student7.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student7.save

student8 = Student.create!(
  first_name: "David",
  last_name: "James",
  profile_image: "lucy.jpg",
  phone_number: 1234567890,
  bio: "Eager to understand the world of literature.",
  user: user16
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591456/students_1_w3ckjt.jpg")
student8.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student8.save

student9 = Student.create!(
  first_name: "Paul",
  last_name: "Davis",
  profile_image: "paul.jpg",
  phone_number: 1234567890,
  bio: "Keen on exploring music theory.",
  user: user17
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591444/students_3_sfhiz7.jpg")
student9.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student9.save

student10 = Student.create!(
  first_name: "John",
  last_name: "Miller",
  profile_image: "emma.jpg",
  phone_number: 1234567890,
  bio: "Ready to delve into art history.",
  user: user18
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591439/students_2_udzwg2.jpg")
student10.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student10.save

student11 = Student.create!(
  first_name: "Mandy",
  last_name: "Wilson",
  profile_image: "mark.jpg",
  phone_number: 1234567890,
  bio: "Excited to learn about physics and its applications.",
  user: user19
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591891/pexels-polinach-17356899_cuwk7k.jpg")
student11.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student11.save

student12 = Student.create!(
  first_name: "Lane",
  last_name: "Moore",
  profile_image: "jane.jpg",
  phone_number: 1234567890,
  bio: "Passionate about chemistry and its role in life.",
  user: user20
)

file = URI.open("https://res.cloudinary.com/daewg6dpy/image/upload/v1688591733/pexels-daniel-xavier-1239291_azisw9.jpg")
student12.photo.attach(io: file, filename: "mzi.jpg", content_type: "image/jpg")
student12.save




# Creating tutor's skills
puts "Creating tutor_skills..."
# tutor_skill1 = TutorSkill.create!(
#   tutor: tutor1,
#   skill: maths_skill,
#   level: rand(1..5)
# )

# tutor_skill2 = TutorSkill.create!(
#   tutor: tutor1,
#   skill: english_skill,
#   level: rand(1..5)
# )

# # Create student skills
# puts "Creating student_skills..."
# student_skill1 = StudentSkill.create!(
#   student: student1,
#   skill: photography_skill,
#   level: rand(1..5)
# )

# student_skill2 = StudentSkill.create!(
#   student: student2,
#   skill: illustration_skill,
#   level: rand(1..5)
# )

(2..10).each do |i|
  TutorSkill.create!(
    tutor: eval("tutor#{i}"),
    skill: Skill.all.sample,
    level: rand(1..5)
  )
end

# Assign a skill to each student
(1..10).each do |i|
  StudentSkill.create!(
    student: eval("student#{i}"),
    skill: Skill.all.sample,
    level: rand(1..5)
  )
end

# Creating Sessions
puts "Creating lessons..."
lesson1 = Lesson.create!(
  tutor: tutor2,
  student: student1,
  date: Date.today,
  time: Time.now,
  amount_offered: 50.0,
  status: "Pending",
  skill: html_skill
)

lesson2 = Lesson.create!(
  tutor: tutor3,
  student: student2,
  date: Date.tomorrow,
  time: Time.now + 1.hour,
  amount_offered: 75.0,
  status: "Confirmed",
  skill: css_skill
)

10.times do |i|
  Lesson.create!(
    tutor: Tutor.all.sample,
    student: Student.all.sample,
    date: Faker::Date.between(from: 2.days.ago, to: Date.today),
    time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    amount_offered: Faker::Number.decimal(l_digits: 2),
    status: ["Pending", "Confirmed", "Rejected"].sample,
    skill: Skill.all.sample
  )
end
