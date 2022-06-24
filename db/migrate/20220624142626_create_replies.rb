class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.references :result,        null: false, foreign_key: true,  comment: "Результат"
      t.references :question,      null: false, foreign_key: true,  comment: "Тест"
      t.string     :user_answer,   null: false,                     comment: "Ответ пользователя"
      t.integer    :mark,                                           comment: "Оценка"
      t.timestamps
    end
  end
end
