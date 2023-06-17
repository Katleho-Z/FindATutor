class CreateTutorProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :tutor_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :bio
      t.text :skills
      t.decimal :rating
      t.string :location
      t.references :student_reviews, null: false, foreign_key: true

      t.timestamps
    end
  end
end
