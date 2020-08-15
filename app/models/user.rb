class User < ApplicationRecord
  def user_tests(level)
    Test.find_by(level: level)
  end
end
