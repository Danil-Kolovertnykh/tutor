# == Schema Information
#
# Table name: missions
#
#  id          :bigint           not null, primary key
#  title       :string
#  enabled     :boolean          default(FALSE)
#  user_id     :bigint
#  instruction :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class MissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
