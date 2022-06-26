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
require "test_helper"

class MissionModulQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
