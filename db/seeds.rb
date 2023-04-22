# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_1 = Category.create!(name: 'Ruby language', description: 'Tests for learning and consolidating knowledge for Ruby')
category_2 = Category.create!(name: 'JavaScript', description: 'Tests for learning and consolidating knowledge in JavaScript')
user_1 = User.create!(name: 'Misha Deineko', email:'deinekomisha1990@gmail,com', password_digest: 'parolle')
test_1 = Test.create!(name: 'Rails start', level: 1, time_limit: 60, category_id: category_1.id, user_id: user_1.id)
question_1 = Question.create!(text: 'Comand for create rails app', test_id: test_1.id)
Answer.create!(text: 'Rails new', question_id: question_1.id, correct: true)
Answer.create!(text: 'Rails c', question_id: question_1.id, correct: false)
