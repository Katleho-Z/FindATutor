class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :tutor, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.float :amount_offered
      t.string :status

      t.timestamps
    end
  end
end
