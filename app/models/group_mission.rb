class GroupMission < ApplicationRecord
  belongs_to :mission
  belongs_to :group
end
