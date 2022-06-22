# == Schema Information
#
# Table name: modul_questions
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  user_id     :bigint           not null
#  instruction :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ModulQuestion < ApplicationRecord

  belongs_to :user

  has_many :questions

  has_and_belongs_to_many :mission

end
