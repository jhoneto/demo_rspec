class Student < ApplicationRecord

  validates :name, :register, presence: true
  validates :register, uniqueness: true
end
