# == Schema Information
#
# Table name: groups
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  departament :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Group < ApplicationRecord
  has_many :users


  has_many :group_missions
  has_many :missions, through: :group_missions

end
