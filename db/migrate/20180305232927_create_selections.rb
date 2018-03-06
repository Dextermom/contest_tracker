class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.string :title
      t.string :composer
      t.string :publisher
      t.string :pml
      t.string :voicing
      t.string :notes

      t.timestamps
    end
  end
end
