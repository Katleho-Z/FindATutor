class CreateTutorReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :tutor_reviews do |t|
      t.references :session, null: false, foreign_key: true
      t.integer :rating
      t.text :comment
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
