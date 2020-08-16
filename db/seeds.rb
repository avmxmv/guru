# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category1 = Category.create(title: 'Тест по Ruby')
category2 = Category.create(title: 'Тест по C+')
category3 = Category.create(title: 'Тест по Python')
category4 = Category.create(title: 'Тест по животным')
category5 = Category.create(title: 'Тест по русскому языку')

user1 = User.create(name: 'Владимир', age: 17)
user2 = User.create(name: 'Даниил', age: 28)
user3 = User.create(name: 'Алексей', age: 34)

test1 = Test.create(title: 'Животные', level: 1, category_id: category4.id)
test2 = Test.create(title: 'Основы Ruby', level: 2, category_id: category1.id)
test3 = Test.create(title: 'Основы С++', level: 3, category_id: category2.id)

question1 = Question.create(body: 'Ruby является интерпретируемым языком?', test_id: test2.id)
question2 = Question.create(body: 'Лев относится к семейству кошачьих?', test_id: test1.id)
question3 = Question.create(body: 'Дельфин является наземным млекопитающим?', test_id: test1.id)
question4 = Question.create(body: 'Map в C++ имеет структуру дерева?', test_id: test3.id)
question5 = Question.create(body: 'Ruby менее компактный язык чем C++?', test_id: test2.id)

Answer.create(correct: true, question_id: question1.id, user_id: user2.id)
Answer.create(correct: true, question_id: question2.id, user_id: user1.id)
Answer.create(correct: false, question_id: question3.id, user_id: user1.id)
Answer.create(correct: true, question_id: question4.id, user_id: user3.id)
Answer.create(correct: true, question_id: question5.id, user_id: user2.id)
