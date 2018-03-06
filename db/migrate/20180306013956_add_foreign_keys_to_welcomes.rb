class AddForeignKeysToWelcomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :welcomes, :selection, foreign_key: true
    add_reference :welcomes, :student, foreign_key: true
  end
end
