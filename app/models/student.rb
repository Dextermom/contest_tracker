class Student < ApplicationRecord
  
  has_many :entries, dependent: :destroy
  has_many :selections, through: :entries, source: :selection
  validates :name, :grad_year, presence: true

end
