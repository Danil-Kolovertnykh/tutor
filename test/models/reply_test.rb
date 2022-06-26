# == Schema Information
#
# Table name: replies
#
#  id          :bigint           not null, primary key
#  result_id   :bigint           not null
#  question_id :bigint           not null
#  user_answer :string           not null
#  mark        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
