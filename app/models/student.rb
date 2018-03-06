class Student < ApplicationRecord
  belongs_to :welcome
  validates :name, :grad_year, presence: true
end
