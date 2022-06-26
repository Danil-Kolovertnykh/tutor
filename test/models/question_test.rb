# == Schema Information
#
# Table name: questions
#
#  id                :bigint           not null, primary key
#  modul_question_id :bigint           not null
#  value             :string           not null
#  type_question     :string           not null
#  right_answer      :string
#  mark              :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
