# == Schema Information
#
# Table name: group_missions
#
#  id         :bigint           not null, primary key
#  group_id   :bigint           not null
#  mission_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class GroupMission < ApplicationRecord
  belongs_to :mission
  belongs_to :group
end
