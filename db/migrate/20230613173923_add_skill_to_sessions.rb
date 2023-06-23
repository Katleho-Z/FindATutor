class AddSkillToSessions < ActiveRecord::Migration[7.0]
  def change
    add_reference :sessions, :skill, foreign_key: true
  end
end
