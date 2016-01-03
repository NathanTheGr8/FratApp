class CreateBrothers < ActiveRecord::Migration
  def change
    create_table :brothers do |t|
      t.string :name
      t.string :initials
      t.string :pledge_class
      t.string :major
      t.string :grad_year
      t.string :phone
      t.timestamps true
    end
  end
end
