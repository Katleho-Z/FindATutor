class CreateStudentReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :student_reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :tutor, null: false, foreign_key: true
      t.timestamps
    end
  end
end
