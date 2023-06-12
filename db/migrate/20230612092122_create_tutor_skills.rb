class CreateTutorSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :tutor_skills do |t|
      t.references :tutor, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
