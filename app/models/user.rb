class User < ApplicationRecord
  def user_tests(level)
    test_ids = Result.where(user_id: id).select(:test_id)
    Test.where(id: test_ids).where(level: level)
  end
end
