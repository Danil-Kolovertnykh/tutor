class CreateMissionModulQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :mission_modul_questions do |t|
      t.references :modul_question,    null: false, foreign_key: true, comment: "Модуль вопросов"
      t.references :mission,           null: false, foreign_key: true, comment: "Тест"
      t.timestamps
    end
  end
end
