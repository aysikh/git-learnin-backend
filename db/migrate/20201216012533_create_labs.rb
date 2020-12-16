class CreateLabs < ActiveRecord::Migration[6.0]
  def change
    create_table :labs do |t|
      t.string :name
      t.text :instruction
      t.integer :lesson_id

      t.timestamps
    end
  end
end
