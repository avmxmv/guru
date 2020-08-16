class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.boolean :correct, null: false
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
