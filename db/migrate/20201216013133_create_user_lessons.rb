class CreateUserLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :user_lessons do |t|
      t.string :status
      t.integer :user_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
