class Test < ApplicationRecord
  def self.test_categories(category)
    category_find = Category.find_by(title: category)
    Test.where(category_id: category_find.id).order(id: :DESC).select(:title)
  end
end
