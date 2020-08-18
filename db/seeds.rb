# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!([
                                { title: 'Тест по Ruby' },
                                { title: 'Тест по C+' },
                                { title: 'Тест по Python' },
                                { title: 'Тест по животным' },
                                { title: 'Тест по русскому языку' }
                              ])

users = User.create!([
                       { name: 'Владимир', age: 17 },
                       { name: 'Даниил', age: 28 },
                       { name: 'Алексей', age: 34 }
                     ])

tests = Test.create!([
                       { title: 'Животные', level: 1, category_id: categories[0].id },
                       { title: 'Основы Ruby', level: 2, category_id: categories[1].id },
                       { title: 'Основы С++', level: 3, category_id: categories[2].id }
                     ])

questions = Question.create!([
                               { body: 'Ruby является интерпретируемым языком?', test_id: tests[1].id },
                               { body: 'Лев относится к семейству кошачьих?', test_id: tests[0].id },
                               { body: 'Дельфин является наземным млекопитающим?', test_id: tests[0].id },
                               { body: 'Map в C++ имеет структуру дерева?', test_id: tests[2].id },
                               { body: 'Ruby менее компактный язык чем C++?', test_id: tests[1].id }
                             ])

Answer.create!([
                 { correct: true, question_id: questions[0].id },
                 { correct: true, question_id: questions[1].id },
                 { correct: false, question_id: questions[2].id },
                 { correct: true, question_id: questions[3].id },
                 { correct: true, question_id: questions[4].id }
               ])

Result.create!([
                 { user_id: users[0].id, test_id: tests[0].id },
                 { user_id: users[1].id, test_id: tests[1].id },
                 { user_id: users[2].id, test_id: tests[2].id }
               ])
