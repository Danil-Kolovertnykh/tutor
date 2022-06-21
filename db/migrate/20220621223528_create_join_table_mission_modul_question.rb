class CreateJoinTableMissionModulQuestion < ActiveRecord::Migration[6.1]
  def change
    create_join_table :missions, :modul_questions do |t|
      # t.index [:mission_id, :modul_question_id]
      #t.index [:modul_question_id, :mission_id]
    end
  end
end
