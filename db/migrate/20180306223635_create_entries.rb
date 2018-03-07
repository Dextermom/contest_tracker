class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :student, foreign_key: true
      t.references :selection, foreign_key: true
      t.string :year

      t.timestamps
    end
  end
end
