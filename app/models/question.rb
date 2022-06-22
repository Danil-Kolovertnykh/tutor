# == Schema Information
#
# Table name: questions
#
#  id                :bigint           not null, primary key
#  modul_question_id :bigint           not null
#  value             :string           not null
#  type_question     :string           not null
#  right_answer_id   :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Question < ApplicationRecord

  belongs_to :modul_question

  has_many :answers
end
