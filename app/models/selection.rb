class Selection < ApplicationRecord
belongs_to :welcome
validates :title, :voicing, :pml, presence: true
end
