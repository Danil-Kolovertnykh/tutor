class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true, comment: "Ответ к какому вопросу"
      t.string :value,        null: false,                    comment: "Ответ"
      t.timestamps
    end
  end
end
