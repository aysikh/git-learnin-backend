class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :information
      t.string :video_url
      t.integer :course_id

      t.timestamps
    end
  end
end
