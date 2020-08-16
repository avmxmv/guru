class User < ApplicationRecord
  def user_tests(level)
    question_ids = Answer.where(user_id: self.id).select(:question_id)
    test_ids = Question.where(id: question_ids).select(:test_id)
    Test.where(id: test_ids).where(level: level)
  end
end
