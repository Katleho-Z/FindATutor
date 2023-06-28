class AddSkillReferenceToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :skill, null: false, foreign_key: true
  end
end
