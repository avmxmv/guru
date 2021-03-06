class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :body, null: false
      t.integer :test_id, null: false, foreign_key: true

      t.timestamps
    end

    add_index :questions, :test_id
  end
end
