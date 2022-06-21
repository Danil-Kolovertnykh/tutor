class Question < ApplicationRecord

  belongs_to :modul_question

  has_many :answers
end
