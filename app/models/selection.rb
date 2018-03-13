class Selection < ApplicationRecord

has_many :entries, dependent: :destroy
has_many :students, through: :entries, source: :student
validates :title,  presence: true
end
