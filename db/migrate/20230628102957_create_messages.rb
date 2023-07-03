class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :chatroom, null: false, foreign_key: true
      t.string :sender_type
      t.bigint :sender_id

      t.timestamps
    end
  end
end
