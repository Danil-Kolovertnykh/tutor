class Group < ApplicationRecord
  has_many :users


  has_many :group_missions
  has_many :missions, through: :group_missions

end
