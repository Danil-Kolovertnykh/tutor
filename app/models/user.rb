class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :group

  has_many :results
  has_many :missions, through: :results

  #Автор
  has_many :mission
  has_many :modul_question



end
