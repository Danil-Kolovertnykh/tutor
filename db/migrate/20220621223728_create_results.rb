class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :user,    null: false, foreign_key: true, comment: "Пользователь"
      t.references :mission, null: false, foreign_key: true, comment: "Тест"
      t.string     :grade,   null: false,                    comment: "Оценка"
      t.timestamps
    end
  end
end
