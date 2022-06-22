# == Schema Information
#
# Table name: group_missions
#
#  id         :bigint           not null, primary key
#  group_id   :bigint           not null
#  mission_id :bigint           not null
#  grade      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class GroupMissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
