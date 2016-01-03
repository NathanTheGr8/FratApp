class CreateChoreAssignments < ActiveRecord::Migration
  def change
    create_table :chore_assignments do |t|
      t.integer :chore_id
      t.integer :brother_id
      t.string :bro_assigned
      t.string :bro_did
      t.timestamps null: false
    end
  end
end
