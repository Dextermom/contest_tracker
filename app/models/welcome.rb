class Welcome < ApplicationRecord
  has_many :selections
  has_many :students
end
