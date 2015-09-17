class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :question_id, index: true, foreign_key: true
      t.text :answer

      t.timestamps null: false
    end
  end
end
