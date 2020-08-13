class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answer do |t|
      t.boolean :correct, default: false
      t.integer :question_id, null: false

      t.timestamps
    end

    add_foreign_key 'answer', 'questions'
  end
end
