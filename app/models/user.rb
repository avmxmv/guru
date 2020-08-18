class User < ApplicationRecord
  def user_tests(level)
    # test_ids = Result.where(user_id: id).select(:test_id)
    # Test.where(id: test_ids).where(level: level)
    Test.joins("LEFT JOIN results ON results.test_id = tests.id WHERE results.user_id = ? AND level = ?", self.id, level)
  end
end
