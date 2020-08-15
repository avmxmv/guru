class Test < ApplicationRecord
  def self.test_categories(category)
    Test.where(category_id: category).order_by(id: :desk)
  end
end
