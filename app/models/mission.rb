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
class Mission < ApplicationRecord

  has_many :group_missions
  has_many :groups, through: :group_missions

  has_many :results
  has_many :users, through: :results

  belongs_to :user

  has_many :mission_modul_questions
  has_many :modul_questions, through: :mission_modul_questions
end
