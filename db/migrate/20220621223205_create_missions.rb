class CreateMissions < ActiveRecord::Migration[6.1]
  def change
    create_table :missions do |t|
      t.string :title,                        comment: "Название теста"
      t.boolean :enabled, default: false,     comment:"Включен/выключен тест"
      t.references :user, foreign_key: true,  comment: "Автор теста"
      t.string :instruction,                  comment: "Инструкция к тесту"
      t.timestamps
    end
  end
end
