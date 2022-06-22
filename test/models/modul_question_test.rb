# == Schema Information
#
# Table name: modul_questions
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  user_id     :bigint           not null
#  instruction :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ModulQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
