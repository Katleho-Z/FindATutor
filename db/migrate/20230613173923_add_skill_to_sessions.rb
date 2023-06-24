class AddSkillToSessions < ActiveRecord::Migration[7.0]
  def change
<<<<<<< HEAD
    add_reference :sessions, :skill, foreign_key: true
=======
    add_reference :sessions, :skill, null: true, foreign_key: true
>>>>>>> 521d4fa9e4bb2adbcd79c85c4f09928d2a4ed01a
  end
end
