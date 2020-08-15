class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answer do |t|
      t.boolean :correct, null: false
      t.integer :question_id, null: false, foreign_key: true
      t.integer :user_id, null: false, foreign_key: true

      t.timestamps
    end

    add_index :answer, :question_id
    add_index :answer, :user_id
  end
end
