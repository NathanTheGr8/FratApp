class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :name
      t.string :description
      t.timestamps null: false
    end
  end
end
