# == Schema Information
#
# Table name: results
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  mission_id :bigint           not null
#  grade      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
