class Mission < ApplicationRecord

  has_many :group_missions
  has_many :groups, through: :group_missions

  has_many :results
  has_many :users, through: :results

  belongs_to :user

  has_and_belongs_to_many :module_questions
end
