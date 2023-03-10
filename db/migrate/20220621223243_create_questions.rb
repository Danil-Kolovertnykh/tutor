class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :modul_question, null: false, foreign_key: true, comment: "К какому модулю вопросов"
      t.string :value,              null: false,                    comment: "Вопрос"
      t.string :type_question,      null: false,                    comment: "Тип вопроса"
      t.string :right_answer,                                       comment: "Правильный ответ"
      t.integer :mark,                                              comment: "Максимальная оценка"
      t.timestamps
    end
  end
end
