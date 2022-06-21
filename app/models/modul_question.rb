class ModulQuestion < ApplicationRecord

  belongs_to :user

  has_many :questions

  has_and_belongs_to_many :mission

end
