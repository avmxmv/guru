class CreateAnswears < ActiveRecord::Migration[6.0]
  def change
    create_table :answears do |t|
      t.text :correct
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
