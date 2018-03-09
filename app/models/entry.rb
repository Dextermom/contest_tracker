class Entry < ApplicationRecord
  belongs_to :student, optional: true
  belongs_to :selection, optional: true
  validates :name, :year, presence: true
end
