class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user_id, index: true, foreign_key: true
      t.string :title
      t.text :question

      t.timestamps null: false
    end
  end
end
