class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :title,        null:false, comment: "Название группы"
      t.string :departament,              comment: "Кафедра"
      t.timestamps
    end
  end
end
