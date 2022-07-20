class CreateCoursesHoles < ActiveRecord::Migration[7.0]
  def change
    create_table :courses_holes do |t|
      t.belongs_to :course
      t.belongs_to :hole
      t.integer :order

      t.timestamps
    end
  end
end
