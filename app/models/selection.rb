class Selection < ApplicationRecord
validates :title, :voicing, :pml, presence: true
end
