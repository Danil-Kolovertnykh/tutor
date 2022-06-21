class CreateGroupMissions < ActiveRecord::Migration[6.1]
  def change
    create_table :group_missions do |t|
      t.references :group,   null: false, foreign_key: true, comment: "Группа"
      t.references :mission, null: false, foreign_key: true, comment: "Тест"
      t.string     :grade,   null: false,                    comment: "Вкл/Выкл"
      t.timestamps
    end
  end
end
