class DropSessionsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :sessions, force: :cascade
  end
end
