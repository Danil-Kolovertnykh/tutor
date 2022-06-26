# == Schema Information
#
# Table name: mission_modul_questions
#
#  id                :bigint           not null, primary key
#  modul_question_id :bigint           not null
#  mission_id        :bigint           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class MissionModulQuestion < ApplicationRecord
  belongs_to :mission
  belongs_to :modul_question

  rails_admin do
    visible false
  end
end
