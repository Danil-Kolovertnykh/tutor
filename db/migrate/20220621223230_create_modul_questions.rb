class CreateModulQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :modul_questions do |t|
      t.string     :title,     null: false,                    comment: "Название модуля вопросов"
      t.references :user,      null: false, foreign_key: true, comment: "Автор модуля вопросов"
      t.string     :instruction,                               comment: "Инструкция к модулю"
      t.timestamps
    end
  end
end
