class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_image
      t.references :user, null: false, foreign_key: true
      t.integer :phone_number
      t.text :bio

      t.timestamps
    end
  end
end
