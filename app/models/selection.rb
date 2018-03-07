class Selection < ApplicationRecord
belongs_to :welcome
has_many :entries, dependent: :destroy
has_many :students, through: :entries, source: :student
validates :title, :voicing, :pml, presence: true
validates :pml, uniqueness: true
end
