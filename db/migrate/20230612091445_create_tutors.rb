class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_image
      t.text :availability
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :email_address
      t.text :bio

      t.timestamps
    end
  end
end
