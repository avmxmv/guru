class Test < ApplicationRecord
  def self.test_categories(category)
    Test.where(category_id: category).order(id: :DESC)
  end
end
