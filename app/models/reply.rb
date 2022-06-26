# == Schema Information
#
# Table name: replies
#
#  id          :bigint           not null, primary key
#  result_id   :bigint           not null
#  question_id :bigint           not null
#  user_answer :string           not null
#  mark        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Reply < ApplicationRecord
  belongs_to :result
  belongs_to :question

end
